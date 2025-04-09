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
        input clk, enable, rst,
        output reg [31:0] data
    );
    
    reg [7:0] counter = 8'd0;
    
    always @(posedge clk) begin
    
        if (rst) begin
            counter <= 8'd11;
            data <= 32'd0;
        end if (enable) begin
            counter <= counter + 8'd1;
            
            data[7:0] <= counter + 8'd1;
            data[15:8] <= counter + 8'd1;
            data[23:16] <= counter + 8'd1;
            data[31:24] <= counter + 8'd1;

        end
        
    end
        
endmodule
