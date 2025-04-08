`timescale 1ns / 1ps

module spitter_tb(
        input [31:0] data,
        output reg clk, rst, enable
    );
        
    spitter spitter_inst (
        .enable(enable),
        .rst(rst),
        .clk(clk),
        .data(data)
    );
    
    initial begin
        enable = 1;
        clk = 0;
        rst = 1;
        #5
        rst = 0;
        #50
        $finish;
    end   
    
  always #2 clk = ~clk;
  
  always begin
    #2
    $display("Random number generated: %b", $random);
  end
  
endmodule
