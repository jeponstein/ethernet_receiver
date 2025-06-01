`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2025 08:05:21 PM
// Design Name: 
// Module Name: fifo_AXI_connector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module fifo_AXI_connector #(
    parameter BUFFER_DEPTH_SET = 32'd32,
    parameter integer UTILIZE_SPITTER = 1, // 1 to use spitter, 0 to not use spitter
    parameter integer DEBUG_ENABLED = 1 // 1 to enable debug signals, 0 to disable debug signals
    )
    (
    // Conditional ports based on UTILIZE_SPITTER
    input wire encoder_data, // data from encoder (used when UTILIZE_SPITTER=0)
    input wire w_en_external, // write enable external (used when UTILIZE_SPITTER=0)
    
    // Conditional debug ports based on DEBUG_ENABLED 
    output wire [0:3] leds,
    output wire [0:2] rgbled0,
    output wire [0:2] rgbled1,
    input wire [0:1] switches,
    input wire [0:3] buttons,
    
    output wire [0:7] qualityfactor,
    output wire [0:7] metadata,
    
    output wire full, empty, errorstate,         

    // Ports of Axi
    input wire  S_AXI_ACLK,
    input wire  S_AXI_ARESETN,

    output reg [31:0]	slv_reg0,
    output reg [31:0]	slv_reg1, // out data
    input wire [31:0]	slv_reg2, // in config
    output wire [31:0]	slv_reg3 // out config
    );
    
    // Debug disable logic by setting the switches and buttons to a neutral position
    wire [1:0] switch_local;
    wire [3:0] buttons_local;
    
    generate
    if (DEBUG_ENABLED) begin : debug_enabled
        assign switch_local = switches;
        assign buttons_local = buttons;
    end else begin : debug_disabled
        assign switch_local = 2'b10; // Disable debug switches
        assign buttons_local = 4'b0000; // Disable debug buttons
    end
    endgenerate

    wire [31:0] data_out_buffer;
    wire [31:0] metadata_buffer;
    wire [$clog2(BUFFER_DEPTH_SET)-1:0] count_buf;
    wire localreset;
    
    // Generate wire for spitter data
    wire [31:0] spitter_data;
    wire w_en; // Internal write enable signal
    
    always @(posedge S_AXI_ACLK)
        begin
        slv_reg1 <= 32'd0;
        
        if (switch_local[0]) begin // This switch should remain on 1
            slv_reg0 <= slv_reg3; 
        end else begin
            // Use generate condition directly in the behavioral code
            if (UTILIZE_SPITTER) begin
            slv_reg0 <= spitter_data;
            end else begin
            slv_reg0 <= encoder_data;
            end
        end 

        slv_reg1[0] <= leds[0]; // full
        slv_reg1[1] <= leds[1]; // empty
        slv_reg1[2] <= leds[2]; // errorstate
        slv_reg1[3] <= leds[3]; // flipflop to axi
    end
    
    assign rgbled1[0] = slv_reg3[0]; // reset led
    assign rgbled1[2] = slv_reg3[1]; // flipflop in

    assign qualityfactor = slv_reg2[31:24];
    assign metadata = slv_reg2[23:16];
    
    assign full = leds[0];
    assign empty = leds[1];
    assign errorstate = leds[2]; // make the states external

    assign localreset = buttons[0] | !S_AXI_ARESETN | slv_reg2[3]; // reset button, slvreg2 or external reset perform a reset

    // Generate block to instantiate based on UTILIZE_SPITTER parameter
    generate
    if (UTILIZE_SPITTER) begin : spitter_enabled
        fifo_buffer #(
        .BUFFER_DEPTH(BUFFER_DEPTH_SET)
        ) fifo_buffer_inst(
        .clk(S_AXI_ACLK),
        .rst(localreset),
        .w_en(w_en),  // output into fifo
        .r_en(slv_reg2[1]),  // output from axi
        .flipflopin(slv_reg2[2]), // output from axi
        .data_in(spitter_data),
        .data_out(slv_reg3), // slv_reg3
        .full(leds[0]),  // input into axi
        .empty(leds[1]), // input into axi
        .errorstate(leds[2]),    // input into axi
        .flipflopout(leds[3]),  // input into axi
        .count(count_buf),
        .flipflopflipped(rgbled1[1]), // led to check flipflopflipped
        .branch_debug(rgbled0) // debug signal to check which if signal is being used
        );
        
        spitter spitter_inst(
        .clk(S_AXI_ACLK),
        .rst(localreset),
        .enable(switch_local[1]),
        .full(leds[0]), // using temporary(ish) storage
        .data(spitter_data),
        .w_en(w_en) // write enable
        );
    end else begin : encoder_enabled
        fifo_buffer #(
        .BUFFER_DEPTH(BUFFER_DEPTH_SET)
        ) fifo_buffer_inst(
        .clk(S_AXI_ACLK),
        .rst(localreset),
        .w_en(w_en_external),  // external write enable
        .r_en(slv_reg2[1]),  // output from axi
        .flipflopin(slv_reg2[2]), // output from axi
        .data_in(encoder_data),
        .data_out(slv_reg3), // slv_reg3
        .full(leds[0]),  // input into axi
        .empty(leds[1]), // input into axi
        .errorstate(leds[2]),    // input into axi
        .flipflopout(leds[3]),  // input into axi
        .count(count_buf),
        .flipflopflipped(rgbled1[1]), // led to check flipflopflipped
        .branch_debug(rgbled0) // debug signal to check which if signal is being used
        );
    end
    endgenerate

endmodule
