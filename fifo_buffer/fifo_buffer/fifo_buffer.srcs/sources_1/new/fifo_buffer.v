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
    
    input clk, rst, w_en, r_en, //w_en > write enable, write into the buffer. r_en > read enable, read received into buffer
    input [BUFFER_WIDTH-1:0] data_in, 
    output reg [OUTPUT_SIZE-1:0] data_out,
    output full, empty,
    output wire [3:0] allow_read 
    
    );
    
    reg [$clog2(BUFFER_DEPTH):0] count;
    reg [$clog2(BUFFER_DEPTH)-1:0] w_ptr, r_ptr;
    reg [BUFFER_WIDTH-1:0] fifo[BUFFER_DEPTH:0];
    
//    localparam read_depth = $floor(OUTPUT_SIZE/BUFFER_WIDTH);
    localparam read_depth = 1;
        
    integer i;    
    integer ptr;
 
    always @(posedge clk) begin
    
        //general reset logic
        if (rst == 1) begin
        
          w_ptr <= 0; 
          r_ptr <= 0;
          data_out <= 0;
          count <= 0;
          
        end else begin
        
          case({w_en, r_en, full})
            3'b000, 3'b110, 3'b001, 3'b111, 3'b101: count <= count;
            3'b010, 3'b011: count <= count - 1;
            3'b100: count <= count + 1;
          endcase
          
        end
        
        if(r_en & !empty) begin
        
//            for(i=0; i < read_depth; i = i+1) begin
//                ptr = r_ptr +read_depth - 1 -i;
//                data_out[BUFFER_WIDTH*i +: BUFFER_WIDTH] <= fifo[ptr];
//                fifo[ptr] <= 1'b0;
//            end

            data_out <= fifo[r_ptr];
            r_ptr <= r_ptr + read_depth;
          
        end
        
        if(w_en & !full)begin
          fifo[w_ptr] <= data_in;
          w_ptr <= w_ptr + 1;
        end
        
    end
    
    
      // To write data to FIFO
      
      // To read data from FIFO
      // 

  
    assign full = (count == BUFFER_DEPTH);
    assign empty = (count == 0);
    assign allow_read = count;
    
endmodule
