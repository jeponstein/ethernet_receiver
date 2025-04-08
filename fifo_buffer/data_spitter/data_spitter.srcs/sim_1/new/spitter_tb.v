`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2025 01:43:34 PM
// Design Name: 
// Module Name: spitter_tb
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


module spitter_tb(
        
        output wire clk, rst,
        input data
    );
    
    reg clk_reg, rst_reg
    
    spitter #(
        .SPEED(8'd15)
    ) spitter_inst (
        .rst(rst),
        .clk(clk),
        .data(data)
    );
    
  always #2 clk = ~clk;
  
  always begin
    #5
    $display("Random number generated: %b", $random);
  end
  
  initial begin
        clk_reg = 0;
        rst_reg = 1;
        #5;
        rst_reg = 0;
        #50;
        rst_reg = 0;
        $finish;
    end
    
    rst = rst_reg;
    clk = clk_reg;
    
endmodule
