`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2025 10:54:24 AM
// Design Name: 
// Module Name: fifo_buffer
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


module fifo_buffer#(
    parameter BUFFER_DEPTH = 32'd32, BUFFER_WIDTH = 32'd2, OUTPUT_SIZE = 32'd4
    // depth dictates amount of slots in buffer, should be 2^k, where k is integer
    // the buffer width should be input size -> each write means one row is filled
    // output size is the amount of bits that is read at once. should be a multiple of the buffer width
    // 
    )(
    
    input clk, rst, w_en, r_en,
    input [BUFFER_WIDTH-1:0] data_in,
    output reg [OUTPUT_SIZE-1:0] data_out,
    output full, empty, allow_read
    
    );
    
    reg [$clog2(BUFFER_DEPTH):0] count;
    reg [$clog2(BUFFER_DEPTH)-1:0] w_ptr, r_ptr;
    reg [BUFFER_WIDTH-1:0] fifo[BUFFER_DEPTH:0];
    
    localparam read_depth = $floor(OUTPUT_SIZE/BUFFER_WIDTH);
        
    always @(posedge clk) begin
    
        //general reset logic
        if (rst) begin
          w_ptr <= 0; 
          r_ptr <= 0;
          data_out <= 0;
          count <= 0;
          
        end else begin
          case({w_en,r_en, full})
            3'b000, 3'b110, 3'b101, 3'b111, 3'b001: count <= count;
            3'b010,3'b011: count <= count - read_depth;
            3'b100: count <= count + 1'b1;
          endcase
        end
    end
    
    
      // To write data to FIFO
      always@(posedge clk) begin
        if(w_en & !full)begin
          fifo[w_ptr] <= data_in;
          w_ptr <= w_ptr + 1;
        end
      end
      
      // To read data from FIFO
      // 
      integer i;
     integer ptr;
    always@(posedge clk) begin
  
        if(r_en & !empty & allow_read) begin
        
            for(i=0; i < read_depth; i = i+1) begin
                ptr = r_ptr +read_depth - 1 -i;
                data_out[BUFFER_WIDTH*i +: BUFFER_WIDTH] <= fifo[ptr];
                fifo[ptr] <= 1'b0;
            end
    
            r_ptr <= r_ptr + read_depth;
          
        end
    
    
    end
  
    assign full = (count == BUFFER_DEPTH);
    assign empty = (count == 0);
    assign allow_read = (count >= read_depth);
    
endmodule
