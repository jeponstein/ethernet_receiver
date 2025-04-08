`timescale 1ns / 1ps

module spitter_tb(
        input [7:0] data,
        output reg clk, rst
    );
        
    spitter spitter_inst (
        .rst(rst),
        .clk(clk),
        .data(data)
    );
    
    initial begin
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
