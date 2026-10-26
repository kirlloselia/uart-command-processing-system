`timescale 1ns/1ps

module tb;

    // =========================================================================
    // Parameters & Timing Constants
    // =========================================================================
    parameter DATA_WIDTH     = 8;
    parameter PRESCALE_WIDTH = 6;
    parameter MAX_WIDTH      = 64;

    // TX baud rate frequency = 115.2 kHz -> Bit Period = 8680.555 ns[cite: 1]
    localparam real TX_BIT_TIME = 1.0e9 / 115200.0;
    
    // Dynamic half-period for RX_CLK based on current prescale
    real rx_clk_half_period;

    // =========================================================================
    // DUT Signals
    // =========================================================================
    logic                      clk;
    logic                      rst_n;
    logic                      par_typ;
    logic                      par_en;
    logic [PRESCALE_WIDTH-1:0] prescale;
    logic                      rx_in;

    logic [DATA_WIDTH-1:0]     p_data;
    logic                      data_valid;
    logic                      par_err;
    logic                      stp_err;

    // Test tracking counters
    int test_count = 0;
    int err_count  = 0;

    // =========================================================================
    // DUT Instantiation
    // =========================================================================
    uart_rx #(
        .DATA_WIDTH     (DATA_WIDTH),
        .PRESCALE_WIDTH (PRESCALE_WIDTH),
        .MAX_WIDTH      (MAX_WIDTH)
    ) dut (
        .clk        (clk),
        .rst_n      (rst_n),
        .par_typ    (par_typ),
        .par_en     (par_en),
        .prescale   (prescale),
        .rx_in      (rx_in),
        .p_data     (p_data),
        .data_valid (data_valid),
        .par_err    (par_err),
        .stp_err    (stp_err)
    );

    // =========================================================================
    // Clock Generation
    // =========================================================================
    initial begin
        clk = 0;
        // Default initialized for Prescale = 8 (921.6 kHz)[cite: 1]
        rx_clk_half_period = (TX_BIT_TIME / 8.0) / 2.0;
        forever begin
            #(rx_clk_half_period) clk = ~clk;
        end
    end

    // =========================================================================
    // Helper Tasks
    // =========================================================================

    // Configure Prescale & Update RX Clock Frequency
    task set_prescale_mode(input [5:0] p_val);
        prescale = p_val;
        // RX_CLK period = TX_BIT_TIME / Prescale[cite: 1]
        rx_clk_half_period = (TX_BIT_TIME / real'(p_val)) / 2.0;
        #(TX_BIT_TIME);
    endtask

    // Synchronous Reset
    task reset_dut();
        rst_n   = 1'b0;
        rx_in   = 1'b1; // Idle line HIGH
        par_en  = 1'b0;
        par_typ = 1'b0;
        #(TX_BIT_TIME * 2);
        @(negedge clk);
        rst_n   = 1'b1;
        #(TX_BIT_TIME);
    endtask

    // Transmit Serial Frame & Self-Check Output
    task send_and_verify(
        input [7:0] tx_byte,
        input       p_en,
        input       p_typ
    );
        logic parity_bit;
        test_count++;

        par_en  = p_en;
        par_typ = p_typ;

        // Parity calculation (0: Even, 1: Odd)
        if (p_typ == 1'b0)
            parity_bit = ^tx_byte;
        else
            parity_bit = ~^tx_byte;

        fork
            // -------------------------------------------------------------
            // Thread 1: UART Transmitter Driving RX_IN
            // -------------------------------------------------------------
            begin
                // Start Bit (LOW)
                rx_in = 1'b0;
                #(TX_BIT_TIME);

                // 8 Data Bits (LSB First)
                for (int i = 0; i < 8; i++) begin
                    rx_in = tx_byte[i];
                    #(TX_BIT_TIME);
                end

                // Parity Bit (Optional)
                if (p_en) begin
                    rx_in = parity_bit;
                    #(TX_BIT_TIME);
                end

                // Stop Bit (HIGH)
                rx_in = 1'b1;
                #(TX_BIT_TIME);

                // Line Idle Gap
                #(TX_BIT_TIME);
            end

            // -------------------------------------------------------------
            // Thread 2: Self-Checking Assertion Logic
            // -------------------------------------------------------------
            begin
                fork
                    begin
                        @(posedge data_valid);
                        // Check parallel data and error flags
                        if (p_data !== tx_byte) begin
                            $display("[ERROR] Test %0d FAILED: Expected 0x%0h, Received 0x%0h", test_count, tx_byte, p_data);
                            err_count++;
                        end else if (par_err !== 1'b0 || stp_err !== 1'b0) begin
                            $display("[ERROR] Test %0d FAILED: Unexpected Error Flag! par_err=%0b, stp_err=%0b", test_count, par_err, stp_err);
                            err_count++;
                        end else begin
                            $display("[PASS] Test %0d: Data 0x%0h received correctly (Prescale=%0d, PAR_EN=%0b, PAR_TYP=%0b)", 
                                     test_count, p_data, prescale, p_en, p_typ);
                        end
                    end
                    begin
                        // Timeout guard: 14 bit periods maximum per frame
                        #(TX_BIT_TIME * 14);
                        $display("[TIMEOUT] Test %0d FAILED: data_valid was never asserted for byte 0x%0h", test_count, tx_byte);
                        err_count++;
                    end
                join_any
                disable fork;
            end
        join
    endtask

    // =========================================================================
    // Main Test Stimulus
    // =========================================================================
    initial begin
        $display("==========================================================");
        $display("          Starting UART RX Positive Testbench             ");
        $display("==========================================================");

        // ---------------------------------------------------------------------
        // Scenario 1: Prescale = 8 (RX_CLK = 921.6 kHz)[cite: 1]
        // ---------------------------------------------------------------------
        set_prescale_mode(6'd8);
        reset_dut();

        // 1.1: No Parity
        send_and_verify(8'hA5, 1'b0, 1'b0);
        // 1.2: Even Parity
        send_and_verify(8'h3C, 1'b1, 1'b0);
        // 1.3: Odd Parity
        send_and_verify(8'h5F, 1'b1, 1'b1);

        // ---------------------------------------------------------------------
        // Scenario 2: Prescale = 16 (RX_CLK = 1.8432 MHz)[cite: 1]
        // ---------------------------------------------------------------------
        set_prescale_mode(6'd16);
        reset_dut();

        // 2.1: No Parity
        send_and_verify(8'hF0, 1'b0, 1'b0);
        // 2.2: Even Parity
        send_and_verify(8'hAA, 1'b1, 1'b0);
        // 2.3: Odd Parity
        send_and_verify(8'h55, 1'b1, 1'b1);

        // ---------------------------------------------------------------------
        // Scenario 3: Prescale = 32 (RX_CLK = 3.6864 MHz)[cite: 1]
        // ---------------------------------------------------------------------
        set_prescale_mode(6'd32);
        reset_dut();

        // 3.1: No Parity
        send_and_verify(8'h12, 1'b0, 1'b0);
        // 3.2: Even Parity
        send_and_verify(8'h81, 1'b1, 1'b0);
        // 3.3: Odd Parity
        send_and_verify(8'h7E, 1'b1, 1'b1);

        // ---------------------------------------------------------------------
        // Final Results Summary
        // ---------------------------------------------------------------------
        #(TX_BIT_TIME * 2);
        $display("==========================================================");
        if (err_count == 0)
            $display(">> TEST PASSED: All %0d positive test scenarios passed! <<", test_count);
        else
            $display(">> TEST FAILED: Encountered %0d failure(s) out of %0d tests. <<", err_count, test_count);
        $display("==========================================================");
        $stop;
    end

endmodule