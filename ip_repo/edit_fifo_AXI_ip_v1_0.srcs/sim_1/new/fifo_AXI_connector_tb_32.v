`timescale 1ns / 1ps

// Modified testbench with BUFFER_DEPTH_SET = 32

module fifo_AXI_connector_tb_32();

    // Parameters
    parameter BUFFER_DEPTH_SET = 32'd32; // Changed from 8 to 32
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
    
    // Flipflop vis
    wire flipflop_in;
    wire flipflop_out;
    
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
    
    assign flipflop_out = leds[3];
    assign flipflop_in = slv_reg2[2];
    
    // Clock generation
    always begin
        #(CLK_PERIOD/2) S_AXI_ACLK = ~S_AXI_ACLK;
    end
    
    // Test variables
    integer i;
    reg [31:0] test_data [0:BUFFER_DEPTH_SET-1];
    
    initial begin
        // Initialize inputs
        switches = 2'b11; // Keep at 2'b11 throughout the test, enabled and enabled
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
        
        // TESTCASE 2: Fill the FIFO by enabling spitter (switches already at 2'b10)
        $display("TESTCASE 2: Testing FIFO fill with spitter");
        #(CLK_PERIOD*BUFFER_DEPTH_SET*2);
        
        if (full !== 1) begin
            $display("ERROR: FIFO should be full");
        end else begin
            $display("SUCCESS: FIFO is full");
        end
        
        // TESTCASE 3: Reading data from FIFO
        $display("TESTCASE 3: Reading data from FIFO");
        slv_reg2[1] = 1; // Enable read
        
        for (i = 0; i < BUFFER_DEPTH_SET; i = i + 1) begin
            @(posedge S_AXI_ACLK); // Wait for positive clock edge
            $display("Read data: %h", slv_reg3);
            
            // Toggle flipflop based on its current value
            slv_reg2[2] = ~leds[3]; // Set flipflop input to opposite of its current output
            @(posedge S_AXI_ACLK); // Wait for positive clock edge to update
            $display("  Toggled flipflop from %b to %b", ~leds[3], leds[3]);
        end
        slv_reg2[1] = 0; // Disable read after reading all data
        
        @(posedge S_AXI_ACLK);
        if (empty !== 1) begin
            $display("ERROR: FIFO should be empty after reading all data");
        end else begin
            $display("SUCCESS: FIFO is empty after reading all data");
        end
        
        // TESTCASE 4: Extended flipflop testing with various delays
        $display("TESTCASE 4: Testing flipflop functionality with various delays");
        
        // Test 4.1: Single pulse test
        $display("  Test 4.1: Single pulse test");
        @(posedge S_AXI_ACLK);
        slv_reg2[1] = 1; // Disable read to better observe flipflop behavior
        slv_reg2[2] = 1; // Set flipflop
        repeat(2) @(posedge S_AXI_ACLK); // Wait for 2 positive clock edges
        
        if (leds[3] !== 1) begin
            $display("  ERROR: Flipflop output should be 1");
        end else begin
            $display("  SUCCESS: Flipflop output is 1");
        end
        
        @(posedge S_AXI_ACLK);
        slv_reg2[2] = 0; // Clear flipflop input
        repeat(2) @(posedge S_AXI_ACLK); // Wait for 2 positive clock edges
        
        if (leds[3] !== 1) begin
            $display("  SUCCESS: Flipflop remains at 1 after input cleared");
        end else begin
            $display("  ERROR: Flipflop should maintain state despite input change");
        end
        
        // Test 4.2: Reset flipflop with system reset
        $display("  Test 4.2: Reset flipflop with system reset");
        @(posedge S_AXI_ACLK);
        S_AXI_ARESETN = 0;
        repeat(2) @(posedge S_AXI_ACLK); // Wait for 2 positive clock edges
        S_AXI_ARESETN = 1;
        repeat(2) @(posedge S_AXI_ACLK); // Wait for 2 positive clock edges
        
        if (leds[3] !== 0) begin
            $display("  ERROR: Flipflop should be reset to 0");
        end else begin
            $display("  SUCCESS: Flipflop was reset to 0");
        end
        
        // Test 4.3: Rapid toggling test
        $display("  Test 4.3: Rapid toggling test");
        
        // Toggle 5 times rapidly
        for (i = 0; i < 5; i = i + 1) begin
            slv_reg2[2] = 1;
            @(posedge S_AXI_ACLK);
            slv_reg2[2] = 0;
            @(posedge S_AXI_ACLK);
        end
        
        // Check final state
        $display("  Flipflop state after rapid toggling: %b", leds[3]);
        
        // Test 4.4: Long delay test
        $display("  Test 4.4: Long delay test");
        slv_reg2[2] = 1;
        #(CLK_PERIOD*20); // Long delay with input high
        
        if (leds[3] !== 1) begin
            $display("  ERROR: Flipflop should remain at 1 for extended periods");
        end else begin
            $display("  SUCCESS: Flipflop remained at 1 for extended period");
        end
        
        slv_reg2[2] = 0;
        #(CLK_PERIOD*20); // Long delay with input low
        
        // Test 4.5: Alternate with FIFO operations
        $display("  Test 4.5: Interleaving flipflop and FIFO operations");
        
        // Reset FIFO
        slv_reg2[3] = 1;
        #(CLK_PERIOD*2);
        slv_reg2[3] = 0;
        #(CLK_PERIOD*2);
        
        // Toggle flipflop while filling FIFO
        slv_reg2[2] = 1;
        #(CLK_PERIOD*2);
        
        // Let FIFO fill partially
        #(CLK_PERIOD*BUFFER_DEPTH_SET/2);
        
        // Toggle flipflop again during FIFO operation
        slv_reg2[2] = 0;
        #(CLK_PERIOD*2);
        slv_reg2[2] = 1;
        #(CLK_PERIOD*2);
        
        // Complete FIFO fill
        #(CLK_PERIOD*BUFFER_DEPTH_SET/2);
        
        $display("  Flipflop state after interleaved operations: %b", leds[3]);
        $display("  FIFO full state: %b", full);
        
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
        
        // Verify flipflop also got reset
        if (leds[3] !== 0) begin
            $display("ERROR: Flipflop should be reset to 0");
        end else begin
            $display("SUCCESS: Flipflop was reset to 0");
        end
        
        // TESTCASE 6: Test qualityfactor and metadata outputs
        $display("TESTCASE 6: Testing qualityfactor and metadata outputs");
        slv_reg2[31:24] = 8'hAA; // Set qualityfactor
        slv_reg2[23:16] = 8'h55; // Set metadata
        #(CLK_PERIOD*2);
        
        $display("qualityfactor: %h (expected AA)", qualityfactor);
        $display("metadata: %h (expected 55)", metadata);
        
        // TESTCASE 7: Test pushing FIFO to error state
        $display("TESTCASE 7: Testing error state");
        // First fill FIFO
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
        $monitor("Time=%t, full=%b, empty=%b, error=%b, flipflop=%b, slv_reg1=%h, slv_reg3=%h",
                 $time, full, empty, errorstate, leds[3], slv_reg1, slv_reg3);
    end

endmodule
