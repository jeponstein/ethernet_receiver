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
    
    always @(posedge clk) begin
        if (rst == 1) begin
            counter <= 0;
        end else if (w_en) begin // if w_en there is reason to count
            counter <= counter + 8'd1;
        end
    end
    
    always @(*) begin
    
        if (rst == 1) begin
//            counter <= 8'd11;
            data = 32'd11;
            w_en = 0;
        end else if (enable == 1 && full != 1) begin
//            counter <= counter + 8'd1;
            
            data[7:0] = counter + 8'd1;
            data[15:8] = counter + 8'd1;
            data[23:16] = counter + 8'd1;
            data[31:24] = counter + 8'd1;
            w_en = 1;
        end else begin
//            counter <= counter + 8'd1;
            data[7:0] = 0;
            data[15:8] = 0;
            data[23:16] = 0;
            data[31:24] = 0;
            w_en = 0;
        end
        
    end
        
endmodule
