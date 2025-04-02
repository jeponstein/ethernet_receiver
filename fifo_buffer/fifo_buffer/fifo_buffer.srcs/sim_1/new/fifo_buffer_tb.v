`timescale 1ns / 1ps

module fifo_buffer_tb#(
        parameter BUFFER_DEPTH = 32'd64, BUFFER_WIDTH = 32'd2, OUTPUT_SIZE = 32'd4
    )(
       output reg clk, rst, w_en, r_en,
       reg [BUFFER_WIDTH-1:0] data_in,
       wire empty, full,
       wire [OUTPUT_SIZE-1:0] data_out,
       wire allow_read
    );
    
    fifo_buffer #(
            .BUFFER_DEPTH(BUFFER_DEPTH),
            .BUFFER_WIDTH(BUFFER_WIDTH),
            .OUTPUT_SIZE(OUTPUT_SIZE)
        )fifo_inst (
            .clk(clk),
            .rst(rst),
            .w_en(w_en),
            .r_en(r_en),
            .data_in(data_in),
            .data_out(data_out),
            .full(full),
            .empty(empty),
            .allow_read(allow_read)
        );

      always #2 clk = ~clk;
      initial begin
        clk = 0; rst = 1;
        w_en = 0; r_en = 0;
        #3 rst = 0;
        
//        cont();
        
//        drive(20);
        drive(150);
//        push10();
//        pop10();
        #4
        $finish;
      end
      
//      task cont();
//      begin
//        //make task that continually (pseudo) pushes data in
//        repeat(OUTPUT_SIZE*10) begin @(posedge clk) push(); end
//        w_en = 0;
//      end
//      endtask
//      always @(posedge allow_read) begin
//        @(posedge clk) begin
//            pop();
//        end
//        r_en <= 0;
//      end
      
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
        end
    endtask 
      
      task pop();
        begin
        if(allow_read) begin
          r_en = 1;
          #1 $display("Pop Out: w_en=%b, r_en=%b, data_out=%h",w_en, r_en,data_out);
        end
        else begin 
            $display("FIFO Empty!! Can not pop data_out");
        end
        end
      endtask
      
        task drive(integer delay);
        begin
        w_en = 0; r_en = 0;
        fork
          begin
            repeat(OUTPUT_SIZE) begin @(posedge clk) push(); end
            w_en = 0;
          end
          begin
            #delay;
            repeat(BUFFER_WIDTH) begin
                if(allow_read) begin
                    @(posedge clk) pop(); 
                end
            end
            r_en = 0;
          end
        join
        end
        endtask 
      
      initial begin 
        $dumpfile("dump.vcd"); $dumpvars;
      end
    
endmodule
