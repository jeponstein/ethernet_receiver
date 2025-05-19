`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2025 03:07:05 PM
// Design Name: 
// Module Name: preaxi_tb
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


module preaxi_tb(
    output reg [0:1] switches,
    output reg [0:3] buttons,
    output reg S_AXI_ACLK, // clk signal
    output reg S_AXI_ARESETN,
    wire [0:3] leds,
    wire [0:2] rgbled0,
    wire [0:2] rgbled1,
    wire [0:7] qualityfactor,
    wire [0:7] metadata,
    
//        input wire w_en, // write enable external
//        input wire [0:31] write_reg
    wire full, empty, errorstate,         
    
    reg [31:0]	slv_reg0,
	reg [31:0]	slv_reg1, // out data
	reg [31:0]	slv_reg2, // in config
	reg [31:0]	slv_reg3 // out config

    );
    
    always @( posedge S_AXI_ACLK )
	begin 
        // if ( localreset == 1'b1 ) // Adding a reset might not make sense
		// used to be S_AXI_ARESETN (negative), swapped for positive localreset
	    // begin
        //     slv_reg0 <= 32'd0; // slv_reg0 and slv_reg1 have been swapped purpose
        //     slv_reg1 <= 32'd0;
        //     slv_reg3 <= 32'd0;

			// rgbled1buf <= 3'd1; // reset led has to be turned on 
	    // end else begin
		// rgbled1buf[0] <= 0; // turn off the reset led
		if (switches[0]) begin
			slv_reg0 <= data_out_buffer;
		//            slv_reg1 <= spitter_data;
			slv_reg3 <= spitter_data;
		//	    slv_reg3 <= metadata_buffer;
		end else begin
			slv_reg0 <= spitter_data;
		//            slv_reg1 <= data_out_buffer;
			slv_reg3 <= data_out_buffer;
		end 

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
        .BUFFER_DEPTH(32'd32)) fifo_buffer_inst(
        
        .clk(S_AXI_ACLK),
        .rst(localreset),
        .w_en(w_en),  // ouput into fifo // ex slv_reg2[0]
        .r_en(slv_reg2[1]),  // ouput from axi
        .flipflopin(slv_reg2[2]), // ouput from axi
        .data_in(spitter_data),
        .data_out(data_out_buffer), // slv_reg1
        .full(leds[0]),  // input into axi
        .empty(leds[1]), // input into axi
        .errorstate(leds[2]),    // input into axi
        .flipflopout(leds[3]),  // input into axi
        .count_output(count_output_buf),
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
    
    always #2 S_AXI_ACLK = ~S_AXI_ACLK;

    
    
endmodule
