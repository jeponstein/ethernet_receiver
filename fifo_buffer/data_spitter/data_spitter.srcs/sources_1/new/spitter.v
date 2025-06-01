`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2025 01:34:51 PM
// Design Name: 
// Module Name: spitter
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


module spitter( 

        input clk, enable, rst, full,
        output reg [31:0] data,
        output reg w_en
    );
    
    reg [7:0] counter = 8'd0;
    wire [7:0] counter_nxt = 8'd0;
    
    always @(posedge clk) begin
        if (rst == 1) begin
            counter <= 8'd112;
            // counter_nxt <= 8'd113; // otherwize does not get reset
            data = 32'd11;
            w_en = 0;
        end else if (enable == 1 && full != 1) begin
            counter <= counter_nxt;
            w_en = 1;
        end else begin
            w_en = 0;
        end
        data[7:0] = counter;
        data[15:8] = counter;
        data[23:16] = counter;
        data[31:24] = 8'd88; // test value
    end
    
    assign counter_nxt = counter + 8'd1;
    // always @(*) begin
        // counter_nxt = counter + 8'd1;
        
        
    // end
        
endmodule
