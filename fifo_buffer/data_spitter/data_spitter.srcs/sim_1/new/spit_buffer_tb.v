`timescale 1ns / 1ps

module spit_buffer_tb(

    input [31:0] data,    
    
    input full, empty,
    
    input [3:0] count,

    output reg clk, rst, r_en, w_en

    );
    
    wire [31:0] connection;
    
    always #2 clk = ~clk;
    
    initial begin
        clk = 0;
        w_en = 0;
        rst = 1;
        r_en = 0;
        #5
        rst = 0;
        w_en = 1;
        #5
        r_en = 1;
        #100
        w_en = 0;
        #5
        r_en = 0;
        $finish;
    end
    
    spitter spitter_inst (
        .enable(w_en),
        .rst(rst),
        .clk(clk),
        .data(connection)
    );
    
    fifo_buffer #(
        .BUFFER_DEPTH(32'd8),
        .BUFFER_WIDTH(32'd32),
        .OUTPUT_SIZE(32'd32)    
    ) fifo_inst (
        .clk(clk),
        .rst(rst),
        .w_en(w_en),
        .r_en(r_en),
        .data_in(connection),
        .data_out(data),
        .full(full),
        .empty(empty),
        .allow_read(count)
    );
    
    
    
endmodule
