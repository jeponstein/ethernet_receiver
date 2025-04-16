`timescale 1ns / 1ps

module fifo_buffer_tb#(
        parameter BUFFER_DEPTH = 32'd16
    )(
       output reg clk, rst, w_en, r_en,
       reg [31:0] data_in,
       wire empty, full, errorstate,
       wire [31:0] data_out,
       wire [$clog2(BUFFER_DEPTH)-1:0] count_output
    );
    
    fifo_buffer #(
            .BUFFER_DEPTH(BUFFER_DEPTH)
        )fifo_inst (
            .clk(clk),
            .rst(rst),
            .w_en(w_en),
            .r_en(r_en),
            .data_in(data_in),
            .data_out(data_out),
            .full(full),
            .empty(empty),
            .errorstate(errorstate),
            .count_output(count_output)
        );

      always #2 clk = ~clk;
      
      initial begin
        clk = 0; rst = 1;
        w_en = 0; r_en = 0;
        #3 rst = 0;
        push10();
        #26
        pop10();
        #40;
        $finish;
      end
            
      task push10();
          begin
            repeat(10) begin @(posedge clk) push(); end
          end
      endtask
      
      task pop10();
          begin
            repeat(10) begin @(posedge clk) pop(); end
          end
      endtask
      
    task push();
        begin
            if(!full) begin
              w_en = 1;
              data_in = $random;
              #1 $display("Push In: w_en=%b, r_en=%b, data_in=%h",w_en, r_en,data_in);
                end
            else 
            begin 
            $display("FIFO Full!! Can not push data_in=%d", data_in);
            end
        w_en = 0;
        end
    endtask 
      
      task pop();
        begin
            if(!empty) begin
              r_en = 1;
              #1 $display("Pop Out: w_en=%b, r_en=%b, data_out=%h",w_en, r_en,data_out);
            end
        r_en = 0;
        end
      endtask
      
//    task drive(integer delay);
//        begin
//        w_en = 0; r_en = 0;
//        fork
//          begin
//            repeat(OUTPUT_SIZE) begin @(posedge clk) push(); end
//            w_en = 0;
//          end
//          begin
//            #delay;
//            repeat(BUFFER_WIDTH) begin
//                if(allow_read) begin
//                    @(posedge clk) pop(); 
//                end
//            end
//            r_en = 0;
//          end
//        join
//        end
//        endtask 
      
      initial begin 
        $dumpfile("dump.vcd"); $dumpvars;
      end
    
endmodule
