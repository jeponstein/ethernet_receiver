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
    parameter BUFFER_DEPTH = 32, BUFFER_WIDTH = 4, OUTPUT_SIZE = 4
    // depth dictates amount of slots, width dictates amount of bits per slot. 
    // equate buffer width to the size of the input bus -> each time it writes, one line is added
    // output size is the amount of bits that is read at once. should be a multiple of the buffer width
    // 
    )(
    
    input clk, rst, w_en, r_en,
    input [BUFFER_WIDTH-1:0] data_in,
    output reg [OUTPUT_SIZE-1:0] data_out,
    output full, empty
    
    );
    
    reg [$clog2(BUFFER_DEPTH)-1:0] w_ptr, r_ptr, count;
    reg [BUFFER_WIDTH-1:0] fifo[BUFFER_DEPTH-1:0];
    
    localparam read_depth = $floor(OUTPUT_SIZE/BUFFER_WIDTH);
        
    always @(posedge clk) begin
    
        //general reset logic
        if (rst) begin
          w_ptr <= 0; 
          r_ptr <= 0;
          data_out <= 0;
          count <= 0;
          
        end else begin
          case({w_en,r_en})
            2'b00, 2'b11: count <= count;
            2'b01: count <= count - read_depth;
            2'b10: count <= count + 1'b1;
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

  always@(posedge clk) begin
  
    if(r_en & !empty ) begin
    
        for(i=0; i < read_depth; i = i+1) begin
            data_out[BUFFER_WIDTH*i +: BUFFER_WIDTH] <= fifo[r_ptr + i];
        end

        r_ptr <= r_ptr + read_depth;
      
    end
    
  end
  
  assign full = (count == BUFFER_DEPTH);
  assign empty = (count == 0);
    
endmodule
