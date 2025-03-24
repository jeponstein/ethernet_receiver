`timescale 1ns / 1ps

module fifo_buffer_tb#(
        parameter BUFFER_DEPTH = 32, BUFFER_WIDTH = 4, OUTPUT_SIZE = 4
    )(
       output reg clk, rst, w_en, r_en,
       reg [BUFFER_WIDTH-1:0] data_in,
       wire empty, full,
       wire [OUTPUT_SIZE-1:0] data_out
    );
    
    fifo_buffer #(
            .BUFFER_DEPTH(32),
            .BUFFER_WIDTH(4),
            .OUTPUT_SIZE(16)
//        BUFFER_DEPTH, BUFFER_WIDTH, OUTPUT_SIZE
        )fifo_inst (
            .clk(clk),
            .rst(rst),
            .w_en(w_en),
            .r_en(r_en),
            .data_in(data_in),
            .data_out(data_out),
            .full(full),
            .empty(empty)
//        clk, rst, w_en, r_en, data_in, data_out, full, empty
        );


    always #2 clk = ~clk;
    
    initial begin
        clk = 0; 
        rst = 0;
        w_en = 0; 
        r_en = 0;
        data_in = 0;
        #10 rst = 1;
        #10 rst = 0;
        #10
//        drive(20);
//        drive(40);
        w_en = 1;
        data_in = $random;
        #10
        data_in = $random;
        #10
        w_en = 0;
        #10
        w_en = 0;
        data_in = $random;
        #10
        r_en = 1;
        #10
        r_en = 0
        w_en = 0;
        #19
        $finish;
      end
      
      
      
      
//      task push();
//        if(!full) begin
//          w_en = 1;
//          data_in = $random;
//          #1 $display("Push In: w_en=%b, r_en=%b, data_in=%h",w_en, r_en,data_in);
//        end
//        else begin 
//            $display("FIFO Full!! Can not push data_in=%d", data_in);
//        end 
//      endtask 
      
//      task pop();
//        if(!empty) begin
//          r_en = 1;
//          #1 $display("Pop Out: w_en=%b, r_en=%b, data_out=%h",w_en, r_en,data_out);
//        end
//        else begin 
//            $display("FIFO Empty!! Can not pop data_out");
//        end
//      endtask
      
//      task drive(integer delay);
//        w_en = 0; r_en = 0;
//        fork
//          begin
//            repeat(10) begin @(posedge clk) push(); end
//            w_en = 0;
//          end
//          begin
//            #delay;
//            repeat(10) begin @(posedge clk) pop(); end
//            r_en = 0;
//          end
//        join  
//      endtask
      
      initial begin 
        $dumpfile("dump.vcd"); $dumpvars;
      end
    
endmodule
