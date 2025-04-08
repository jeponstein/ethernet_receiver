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
        input clk, rst,
        output reg [7:0] data
    );
    
    reg [7:0] counter = 8'd0;
    
    always @(posedge clk) begin
    
        if (rst) begin
            counter <= 8'd0;
            data <= 0;
        end else begin
            counter <= counter + 8'd1;
            data <= counter + 8'd1;
        end
        
    end
        
endmodule
