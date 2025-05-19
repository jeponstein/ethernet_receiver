`timescale 1ns / 1ps

// AI-generated for quick testing. Not fully verified.

module fifo_AXI_connector_tb();

    // Parameters
    parameter BUFFER_DEPTH_SET = 32'd8; // Smaller for easier testing
    parameter CLK_PERIOD = 10; // 10ns = 100MHz
    
    // Inputs
    reg [0:1] switches;
    reg [0:3] buttons;
    reg S_AXI_ACLK;
    reg S_AXI_ARESETN;
    reg [31:0] slv_reg2;
    
    // Outputs
    wire [0:3] leds;
    wire [0:2] rgbled0;
    wire [0:2] rgbled1;
    wire [0:7] qualityfactor;
    wire [0:7] metadata;
    wire full, empty, errorstate;
    wire [31:0] slv_reg0;
    wire [31:0] slv_reg1;
    wire [31:0] slv_reg3;
    
    // Instantiate the Unit Under Test (UUT)
    fifo_AXI_connector #(
        .BUFFER_DEPTH_SET(BUFFER_DEPTH_SET)
    ) uut (
        .switches(switches),
        .buttons(buttons),
        .leds(leds),
        .rgbled0(rgbled0),
        .rgbled1(rgbled1),
        .qualityfactor(qualityfactor),
        .metadata(metadata),
        .full(full),
        .empty(empty),
        .errorstate(errorstate),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .slv_reg0(slv_reg0),
        .slv_reg1(slv_reg1),
        .slv_reg2(slv_reg2),
        .slv_reg3(slv_reg3)
    );
    
    // Clock generation
    always begin
        #(CLK_PERIOD/2) S_AXI_ACLK = ~S_AXI_ACLK;
    end
    
    // Test variables
    integer i;
    reg [31:0] test_data [0:BUFFER_DEPTH_SET-1];
    
    initial begin
        // Initialize inputs
        switches = 2'b00;
        buttons = 4'b0000;
        S_AXI_ACLK = 0;
        S_AXI_ARESETN = 0;
        slv_reg2 = 0;
        
        // Generate test data
        for (i = 0; i < BUFFER_DEPTH_SET; i = i + 1) begin
            test_data[i] = 32'hA0000000 + i;
        end
        
        // Reset the system
        #(CLK_PERIOD*5);
        S_AXI_ARESETN = 1;
        #(CLK_PERIOD*5);
        
        // TESTCASE 1: Test reset functionality
        $display("TESTCASE 1: Testing reset functionality");
        S_AXI_ARESETN = 0;
        #(CLK_PERIOD*5);
        S_AXI_ARESETN = 1;
        #(CLK_PERIOD*5);
        
        if (empty !== 1) begin
            $display("ERROR: FIFO should be empty after reset");
        end else begin
            $display("SUCCESS: FIFO is empty after reset");
        end
        
        // TESTCASE 2: Fill the FIFO by enabling spitter
        $display("TESTCASE 2: Testing FIFO fill with spitter");
        switches = 2'b10; // Enable spitter
        #(CLK_PERIOD*BUFFER_DEPTH_SET*2);
        
        if (full !== 1) begin
            $display("ERROR: FIFO should be full");
        end else begin
            $display("SUCCESS: FIFO is full");
        end
        
        // TESTCASE 3: Read data from the FIFO
        $display("TESTCASE 3: Reading data from FIFO");
        switches = 2'b00; // Switch off spitter
        slv_reg2[1] = 1; // Enable read
        
        for (i = 0; i < BUFFER_DEPTH_SET; i = i + 1) begin
            #(CLK_PERIOD);
            $display("Read data: %h", slv_reg3);
        end
        
        #(CLK_PERIOD);
        if (empty !== 1) begin
            $display("ERROR: FIFO should be empty after reading all data");
        end else begin
            $display("SUCCESS: FIFO is empty after reading all data");
        end
        
        // TESTCASE 4: Test flipflop functionality
        $display("TESTCASE 4: Testing flipflop functionality");
        slv_reg2[2] = 1; // Enable flipflop
        #(CLK_PERIOD*2);
        
        if (leds[3] !== 1) begin
            $display("ERROR: Flipflop output should be 1");
        end else begin
            $display("SUCCESS: Flipflop output is 1");
        end
        
        // TESTCASE 5: Test reset via slv_reg2
        $display("TESTCASE 5: Testing reset via slv_reg2");
        slv_reg2[3] = 1; // Reset via slv_reg2
        #(CLK_PERIOD*2);
        slv_reg2[3] = 0; // Clear reset
        #(CLK_PERIOD*2);
        
        if (empty !== 1) begin
            $display("ERROR: FIFO should be empty after reset via slv_reg2");
        end else begin
            $display("SUCCESS: FIFO is empty after reset via slv_reg2");
        end
        
        // TESTCASE 6: Test switch routing configuration
        $display("TESTCASE 6: Testing switch routing configuration");
        switches = 2'b01; // Route data_out_buffer to slv_reg3 and spitter_data to slv_reg0
        
        // Enable spitter again
        switches[1] = 1;
        #(CLK_PERIOD*5);
        
        $display("slv_reg3 data (should be from data_out_buffer): %h", slv_reg3);
        
        // Read some data
        slv_reg2[1] = 1;
        #(CLK_PERIOD*5);
        
        $display("slv_reg3 data after reading: %h", slv_reg3);
        
        // TESTCASE 7: Test qualityfactor and metadata outputs
        $display("TESTCASE 7: Testing qualityfactor and metadata outputs");
        slv_reg2[31:24] = 8'hAA; // Set qualityfactor
        slv_reg2[23:16] = 8'h55; // Set metadata
        #(CLK_PERIOD*2);
        
        $display("qualityfactor: %h (expected AA)", qualityfactor);
        $display("metadata: %h (expected 55)", metadata);
        
        // TESTCASE 8: Test pushing FIFO to error state
        $display("TESTCASE 8: Testing error state");
        // First fill FIFO
        switches = 2'b10; // Enable spitter
        slv_reg2[1] = 0;  // Disable read
        
        #(CLK_PERIOD*BUFFER_DEPTH_SET*2);
        
        if (errorstate !== 0) begin
            $display("ERROR: FIFO should not be in error state yet");
        end
        
        // Try to write while full
        #(CLK_PERIOD*10);
        
        if (errorstate !== 1) begin
            $display("ERROR: FIFO should be in error state");
        end else begin
            $display("SUCCESS: FIFO entered error state as expected");
        end
        
        // End simulation
        #(CLK_PERIOD*10);
        $display("Testbench completed");
        $finish;
    end
    
    // Monitor changes
    initial begin
        $monitor("Time=%t, full=%b, empty=%b, error=%b, switches=%b, slv_reg1=%h, slv_reg3=%h",
                 $time, full, empty, errorstate, switches, slv_reg1, slv_reg3);
    end

endmodule
