`timescale 1ns / 1ps

module fifo_buffer#(

    parameter BUFFER_DEPTH = 32'd32
    
    )(
    
    input clk, rst, w_en, r_en, //w_en > write enable, write into the buffer. r_en > read enable, read received into buffer
    input [31:0] data_in, 
    input flipflopin,
    output reg [31:0] data_out,
    output full, empty, errorstate,
    output reg [$clog2(BUFFER_DEPTH)-1:0] count,
    output reg flipflopout,
    output wire flipflopflipped,
    output reg [0:2] branch_debug // debug signal to check which if signal is being used
    
    );
    
    // reg flipflopflipped; // 1 if the flipflop had flipped
    reg [$clog2(BUFFER_DEPTH)-1:0] w_ptr, r_ptr;
    reg [31:0] fifo[BUFFER_DEPTH:0];
    reg error;
 
`define incremental $clog2(BUFFER_DEPTH)-1
 
    always @(posedge clk) begin
    
        error <= error;
        
        //general reset logic
        if (rst == 1) begin
        
            w_ptr <= 0; 
            r_ptr <= 0;
            data_out <= 0;
            count <= 0;
            error <= 0;
            flipflopout <= flipflopin;
            branch_debug <= 3'b000; // reset the branch debug signal	
            
            // flipflopflipped <= 0;

        end else if (!errorstate) begin
        
            // if (flipflopflipped) begin // disable this for now and only do on read
            //     flipflopout <= flipflopin; // flip the flippy floppies
            // end
                      
            // r_en is only valid when it is raised together with flipflopflipped
            // otherwise it gotta wait
            
            if((r_en & flipflopflipped) & w_en & empty) begin
                // trying to read & write while empty -> directly place input to output    
                data_out <= data_in;
                count <= count;
                flipflopout <= flipflopin; // flip the flippy floppies
                branch_debug <= 3'b001; 
                
            end else if( w_en & full) begin
                // trying to write while full. not possible. 
                
                count <= count;
                branch_debug <= 3'b010;
                // error <= 1'b1; // temporarily disabled
                
            end else if ((r_en & flipflopflipped) & empty) begin
                // trying to read while buffer is empty. not allowed
                data_out <= 32'd0;
                count <= count;
                error <= 1'b1;
                branch_debug <= 3'b011;
                // flipflopout <= flipflopin; // flip the flippy floppies
                
            end else if ((r_en & flipflopflipped) & w_en ) begin
                // writing & reading at the same time while not empty 
                
                fifo[w_ptr] <= data_in;
                data_out <= fifo[r_ptr];
                w_ptr <= w_ptr + 1;
                r_ptr <= r_ptr + 1;
                count <= count;
                flipflopout <= flipflopin; // flip the flippy floppies
                branch_debug <= 3'b100;
                
            end else if (w_en) begin
                // just writing while not full
                
                fifo[w_ptr] <= data_in;
                count <= count + 1;
                w_ptr <= w_ptr + 1;
                branch_debug <= 3'b101;
                
            end else if (r_en & flipflopflipped) begin
                // just reading while not empty
                count <= count - 1;
                data_out <= fifo[r_ptr];
                r_ptr <= r_ptr + 1;
                flipflopout <= flipflopin; // flip the flippy floppies
                branch_debug <= 3'b110;
            end else begin
                // no action taken
                // data_out <= data_out; // unsure whether this is needed
                // count <= count;
                branch_debug <= 3'b111;
            end
        end
        
    end  
    
    // always @(*) begin // Handle the flipping of the flipflop
    //     if (flipflopin != flipflopout) begin
    //         flipflopflipped = 1;
    //     end else begin
    //         flipflopflipped = 0;
    //     end
    // end

    assign flipflopflipped = (flipflopin != flipflopout) ? 1 : 0; // Handle the flipping of the flipflop
          
    assign full = (count == BUFFER_DEPTH-1);
    assign empty = (count == 0);
    // assign count_output = count;
    assign errorstate = error;
    
endmodule
