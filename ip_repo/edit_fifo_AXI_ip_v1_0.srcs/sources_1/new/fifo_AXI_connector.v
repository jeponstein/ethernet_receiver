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
		parameter BUFFER_DEPTH_SET = 32'd32
    )
    (
        input wire [0:1] switches,
        input wire [0:3] buttons,
        output wire [0:3] leds,
        output wire [0:2] rgbled0,
        output wire [0:2] rgbled1,
        output wire [0:7] qualityfactor,
        output wire [0:7] metadata,
        
//        input wire w_en, // write enable external
//        input wire [0:31] write_reg
        output wire full, empty, errorstate,         

        // Ports of Axi
        input wire  S_AXI_ACLK,
        input wire  S_AXI_ARESETN,

        output reg [31:0]	slv_reg0,
        output reg [31:0]	slv_reg1, // out data
        input wire [31:0]	slv_reg2, // in config
        output wire [31:0]	slv_reg3 // out config

    );
    
    // wire enable_spitter;
	wire [31:0] data_out_buffer;
	wire [31:0] metadata_buffer;
	wire [31:0] spitter_data;
	
	// reg [2:0] rgbled0buf;
	// wire [2:0] rgbled1buf; // temp wire for function outputs
	wire [$clog2(BUFFER_DEPTH_SET)-1:0] count_buf;

	wire w_en; // Comment out when externally should be used
	wire localreset;
	
	always @( posedge S_AXI_ACLK )
	begin 
        // if ( localreset == 1'b1 ) // Adding a reset might not make sense
		// used to be S_AXI_ARESETN (negative), swapped for positive localreset
	    // begin
        slv_reg0 <= 32'd0; // slv_reg0 and slv_reg1 have been swapped purpose
        slv_reg1 <= 32'd0;
        //     slv_reg3 <= 32'd0;

		// if (switches[0]) begin // This switch should remain on 1
		// 	// slv_reg0 <= data_out_buffer;
		// 	slv_reg3 <= spitter_data;
		// end else begin
		// 	// slv_reg0 <= spitter_data;
		// 	slv_reg3 <= data_out_buffer;
		// end 

		slv_reg1[0] <= leds[0]; // full
		slv_reg1[1] <= leds[1]; // empty
		slv_reg1[2] <= leds[2]; // errorstate
		slv_reg1[3] <= leds[3]; // flipflop to axi
		// rgbled0buf <= slv_reg2; 
	//    end
    end
	
	// assign rgbled0 = rgbled0buf; // disable buffer as output of function needs to be wire
	assign rgbled1[0] = localreset; // reset led
	assign rgbled1[2] = 0; 

	assign qualityfactor = slv_reg2[31:24];
	assign metadata = slv_reg2[23:16];
	
	assign full = leds[0];
	assign empty = leds[1];
	assign errorstate = leds[2]; // make the states external

	assign localreset = buttons[0] | !S_AXI_ARESETN | slv_reg2[3]; // reset button, slvreg2 or external reset perform a reset
	
	fifo_buffer #(
        .BUFFER_DEPTH(BUFFER_DEPTH_SET)) fifo_buffer_inst(
        
        .clk(S_AXI_ACLK),
        .rst(localreset),
        .w_en(w_en),  // ouput into fifo // ex slv_reg2[0]
        .r_en(slv_reg2[1]),  // ouput from axi
        .flipflopin(slv_reg2[2]), // ouput from axi
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
        .enable(switches[1]),
		.full(leds[0]), // using temporary(ish) storage
        .data(spitter_data),
		.w_en(w_en) // write enable
    );

endmodule
