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


module spitter#(
        parameter SPEED = 8'd12
    )(
        input clk, rst,
        output reg [0:0] data
    );
    
    always @(posedge clk) begin
    
        if (rst) begin
        
            data <= 0;
        
        end else begin
    
            if ($random > 0) begin
                data <= 0;
            end else begin
                data <= 1;
            end     
        
        end
        
    end
    
    
endmodule
