`timescale 1ns / 1ps

module fifo_spitter_tb();
    // Clock and reset signals
    reg clk;
    reg rst;
    
    // FIFO interface signals
    wire [31:0] data_out_buffer;
    wire [31:0] spitter_data;
    wire w_en;
    reg r_en;
    reg flipflopin;
    wire flipflopout;
    wire flipflopflipped;
    wire full, empty, errorstate;
    wire [4:0] count;
    // wire [0:2] branch_debug;
    wire [0:2] rgbled0;
    reg [0:1] switches;
    reg [0:3] buttons;
    // wire [0:3] leds;
    // wire [0:2] rgbled1;
    
    // Test control signals
    integer test_stage = 0;
    integer test_cycles = 0;
    integer errors = 0;
    reg [31:0] expected_data;
    
    // Instantiate the FIFO buffer
    fifo_buffer #(
        .BUFFER_DEPTH(32'd8)) fifo_buffer_inst(
        .clk(clk),
        .rst(rst),
        .w_en(w_en),
        .r_en(r_en),
        .flipflopin(flipflopin),
        .data_in(spitter_data),
        .data_out(data_out_buffer),
        .full(full),
        .empty(empty),
        .errorstate(errorstate),
        .flipflopout(flipflopout),
        .count(count),
        .flipflopflipped(flipflopflipped),
        .branch_debug(rgbled0)
    );
    
    // Instantiate the spitter
    spitter spitter_inst(
        .clk(clk),
        .rst(rst),
        .enable(switches[1]),
        .full(full),
        .data(spitter_data),
        .w_en(w_en)
    );
    
    // Clock generation
    always #5 clk = ~clk;
    
    // Test sequence
    initial begin
        // Initialize all inputs
        clk = 0;
        rst = 1;
        r_en = 0;
        flipflopin = 0;
        switches = 2'b00;
        buttons = 4'b0000;
        
        // Test Stage 0: Reset test
        test_stage = 0;
        #20;
        rst = 0;
        
        // Test Stage 1: Basic write to FIFO
        test_stage = 1;
        #10;
        switches[1] = 1; // Enable spitter
        #50; // Let spitter write some data
        
        // Test Stage 2: Read from FIFO
        test_stage = 2;
        switches[1] = 0; // Disable spitter
        #10;
        r_en = 1;
        flipflopin = 1; // Change flipflop to enable read
        #50; // Read multiple values
        
        // Test Stage 3: Attempt to read when empty
        test_stage = 3;
        #50; // Continue reading until empty
        
        // Test Stage 4: Reset error state
        test_stage = 4;
        rst = 1;
        #20;
        rst = 0;
        r_en = 0;
        
        // Test Stage 5: Fill FIFO to full
        test_stage = 5;
        switches[1] = 1; // Enable spitter
        #100; // Let FIFO fill up
        
        // Test Stage 6: Attempt to write when full
        test_stage = 6;
        #50; // Continue trying to write when full
        
        // Test Stage 7: Simultaneous read/write
        test_stage = 7;
        flipflopin = ~flipflopout; // Toggle flipflop
        r_en = 1; // Enable reading
        #100; // Simultaneous operations
        
        // self add
        flipflopin = ~flipflopout; // Toggle flipflop
        #10
        flipflopin = ~flipflopout; // Toggle flipflop
        #10
        flipflopin = ~flipflopout; // Toggle flipflop
        #10
        flipflopin = ~flipflopout; // Toggle flipflop
        #10
        flipflopin = ~flipflopout; // Toggle flipflop
        #30
        flipflopin = ~flipflopout; // Toggle flipflop
        #30
        flipflopin = ~flipflopout; // Toggle flipflop
        #30
        flipflopin = ~flipflopout; // Toggle flipflop
        #50
        flipflopin = ~flipflopout; // Toggle flipflop
        #50
        flipflopin = ~flipflopout; // Toggle flipflop
        #50
        flipflopin = ~flipflopout; // Toggle flipflop
        #20
        flipflopin = ~flipflopout; // Toggle flipflop
        #20
        flipflopin = ~flipflopout; // Toggle flipflop
        #20
        
        
        
        // Test Stage 8: Final reset
        test_stage = 8;
        rst = 1;
        #20;
        
        // End simulation
        $display("Simulation complete with %0d errors", errors);
        $finish;
    end
    
    // Test stage monitoring and assertions
    always @(posedge clk) begin
        if (!rst) begin
            test_cycles <= test_cycles + 1;
            
            // Monitor and display relevant information based on test stage
            case(test_stage)
                0: begin // Reset test
                    if (test_cycles == 1) begin
                        if (empty !== 1 || count !== 0) begin
                            $display("ERROR: Reset did not clear FIFO properly");
                            errors = errors + 1;
                        end
                    end
                end
                
                1: begin // Basic write test
                    if (test_cycles % 10 == 0) begin
                        $display("Stage 1 - Write Test: count=%0d, empty=%0d, full=%0d", 
                                 count, empty, full);
                    end
                end
                
                2: begin // Basic read test
                    if (test_cycles % 10 == 0) begin
                        $display("Stage 2 - Read Test: data_out=%h, count=%0d, flipflopflipped=%0d", 
                                 data_out_buffer, count, flipflopflipped);
                    end
                end
                
                3: begin // Empty read test
                    if (errorstate && test_cycles % 10 == 0) begin
                        $display("Stage 3 - Empty Read Error detected: errorstate=%0d", errorstate);
                    end
                end
                
                5, 6: begin // Full write test
                    if (test_cycles % 10 == 0) begin
                        $display("Stage %0d - Full Test: count=%0d, full=%0d, w_en=%0d", 
                                 test_stage, count, full, w_en);
                    end
                end
                
                7: begin // Simultaneous read/write
                    if (test_cycles % 10 == 0) begin
                        $display("Stage 7 - Read/Write Test: count=%0d, branch_debug=%b",
                                 count, rgbled0);
                    end
                end
            endcase
            
            // Monitor state variables
            if (test_cycles % 20 == 0) begin
                $display("Time=%0t, Stage=%0d: full=%0d, empty=%0d, error=%0d, branch=%b, count=%0d", 
                         $time, test_stage, full, empty, errorstate, rgbled0, count);
            end
        end
    end

endmodule
