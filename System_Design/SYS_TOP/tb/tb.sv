`timescale 1ns/1ps
package pack;
    parameter ADDR_WIDTH = 4;       // regfile addr width
    parameter DATA_WIDTH = 8;       // data width
    parameter FUN_WIDTH = 4;        // alu func width
    parameter OUT_WIDTH = 2*DATA_WIDTH; // alu output width
    parameter RATIO_WIDTH = 8;       // clk div ratio width
    parameter FIFO_DEPTH = 8;
    typedef logic [DATA_WIDTH-1:0] DATA;
    typedef logic [ADDR_WIDTH-1:0] ADDR;
    typedef logic [FUN_WIDTH-1:0] FUNC;
    typedef logic [OUT_WIDTH-1:0] ALU_OUT;

    typedef enum DATA { 
        WRITE_REG = 'hAA,
        READ_REG = 'hBB,
        ALU_OPER = 'hCC,
        ALU_NOPER = 'hDD
    } cmd_e;

    class frame;
        DATA payload;
        bit par_typ;
        bit par_en;
        // bit [10:0] frame_w_par;
        // bit [9:0] frame_wo_par;
        bit [10:0] frame_data;
        function new (  DATA payload = 'b0,
                        bit par_typ = 'b0,
                        bit par_en = 'b1
                    );
            this.payload = payload;
            this.par_typ = par_typ;
            this.par_en = par_en;
            construct_frame ();

        endfunction

        function void construct_frame ();
            bit par_bit = this.par_typ ? ~^this.payload : ^this.payload;
            if (!this.par_en) begin
                // frame_wo_par = {1'b1, payload, 1'b0};
                frame_data = {1'b1, 1'b1, payload, 1'b0};
            end
            else begin
                // frame_w_par = {1'b1, par_bit, payload, 1'b0};
                frame_data = {1'b1, par_bit, payload, 1'b0};
            end
        endfunction

        function DATA get_payload ();
            payload = frame_data [8:1];
            return payload;
        endfunction
    endclass

    class txn;
        frame frames [$];

        bit par_typ;
        bit par_en;
        function new (  bit par_typ = 'b0,
                        bit par_en = 'b1
                    );
            this.par_typ = par_typ;
            this.par_en = par_en;
        endfunction
        

        function void construct_txn (cmd_e cmd, ADDR addr = 'b0, DATA payload = 'b0, op_a = 'b0, op_b = 'b0, FUNC func = 'b0);
            frame frame;
            case (cmd)
                WRITE_REG: begin
                    frame = new (cmd, this.par_typ, this.par_en);
                    frames.push_back (frame);
                    frame = new (addr, this.par_typ, this.par_en);
                    frames.push_back (frame);
                    frame = new (payload, this.par_typ, this.par_en);
                    frames.push_back (frame);
                end
                READ_REG: begin
                    frame = new (cmd, this.par_typ, this.par_en);
                    frames.push_back (frame);
                    frame = new (addr, this.par_typ, this.par_en);
                    frames.push_back (frame);
                end
                ALU_OPER: begin
                    frame = new (cmd, this.par_typ, this.par_en);
                    frames.push_back (frame);
                    frame = new (op_a, this.par_typ, this.par_en);
                    frames.push_back (frame);
                    frame = new (op_b, this.par_typ, this.par_en);
                    frames.push_back (frame);
                    frame = new (func, this.par_typ, this.par_en);
                    frames.push_back (frame);
                end
                ALU_NOPER: begin
                    frame = new (cmd, this.par_typ, this.par_en);
                    frames.push_back (frame);
                    frame = new (func, this.par_typ, this.par_en);
                    frames.push_back (frame);
                end
            endcase
        endfunction
    endclass
endpackage

interface intf (input logic uart_clk);
    logic rst_n;              // system rst
    logic rx_in;              // serial input data path
    logic tx_out;            // serial output data path
    // for debugging 
    logic parity_error;      // err flags
    logic framing_error;      // err flags

    modport DUT (
    input rst_n, rx_in,
    output tx_out,
    output parity_error,
    output framing_error
    );

    clocking drv_cb @(posedge uart_clk);
        default output #1ns;
        output rx_in;
    endclocking;

    modport DRV (
        clocking drv_cb,
        output rst_n        // rst_n is async assertion, but sync deassertion to avoid recovery or removal violations.
        // but i dont know how to do it?!
    );

    clocking mon_cb @(posedge uart_clk);
        default input #1ns;
        input tx_out, parity_error, framing_error;
    endclocking;

    modport MON (
        clocking mon_cb,
        input rst_n
    );

endinterface //interface
module tb;

    import pack::*;

    bit uart_clk, ref_clk;
    bit tb_tx_clk, tb_rx_clk;

    bit scan_clk, scan_rst;
    localparam DFT_EN = 1;

    localparam UART_CLK_PER = 271.267;
    localparam REF_CLK_PER = 20;

    always #(UART_CLK_PER/2) uart_clk = ~ uart_clk;

    always #(REF_CLK_PER/2) ref_clk = ~ ref_clk;


    intf intf (uart_clk);


    always begin
        repeat (16) @(intf.drv_cb);
        tb_tx_clk = ~ tb_tx_clk;
    end

    always begin
        repeat (16) @(intf.mon_cb);
        tb_rx_clk = ~ tb_rx_clk;
    end

    if (DFT_EN) begin
        SYS_TOP #(.USE_ICG (0)) DUT (
            .*,
            .UART_CLK (uart_clk),
            .REF_CLK (ref_clk),
            .test_mode (1'b0),
            .SE (1'b0),
            .SI (4'b0),
            .SO (),
            .RST_N (intf.DUT.rst_n),
            .UART_RX_IN (intf.DUT.rx_in),
            .UART_TX_OUT (intf.DUT.tx_out),
            .parity_error (intf.DUT.parity_error),
            .framing_error (intf.DUT.framing_error)
        );
    end
    else begin
        SYS_TOP #(.USE_ICG (0)) DUT (
            .UART_CLK (uart_clk),
            .REF_CLK (ref_clk),
            .RST_N (intf.DUT.rst_n),
            .UART_RX_IN (intf.DUT.rx_in),
            .UART_TX_OUT (intf.DUT.tx_out),
            .parity_error (intf.DUT.parity_error),
            .framing_error (intf.DUT.framing_error)
        );
    end
    


    task automatic drive_frame (ref frame frame);
        int frame_length = frame.par_en ? 11 : 10;
        $display("[DBG] drive frame: %b", frame.frame_data);
        for (int i = 0; i < frame_length; i++) begin
            intf.drv_cb.rx_in <= frame.frame_data [i];
            @ (posedge tb_tx_clk);
        end
    endtask

    task automatic monitor_frame (ref frame frame);
        int frame_length = frame.par_en ? 11 : 10;
        wait (!intf.mon_cb.tx_out);
        for (int i = 0; i < frame_length; i++) begin
            @ (posedge tb_rx_clk);
            frame.frame_data [i] <= intf.mon_cb.tx_out;
            #1step;
        end
        $display("[DBG] monitor frame: %b", frame.frame_data);
    endtask

    task reset ();
        intf.rst_n <= 'b0;
        intf.rx_in <= 'b1;
        repeat (5) @ (intf.drv_cb);
        #5; // async deassertion
        intf.rst_n <= 'b1;
        repeat (5) @ (intf.drv_cb);
        @(posedge tb_tx_clk);
    endtask

    initial begin
        frame frame;
        txn txn;
        DATA payload, expected_payload, addr;
        int expected_alu;
        txn = new ;
        reset ();
        // write to address 5 
        $display("Testcase 01: write 10 to address 5 and read from it");
        $display("Send write cmd");
        addr = 'd5;
        expected_payload = 'd10;
        txn.construct_txn (WRITE_REG, addr, expected_payload);
        while (txn.frames.size > 0) begin
            frame = txn.frames.pop_front ();
            drive_frame (frame);
        end
        $display("Send read cmd");
        txn = new ;
        txn.construct_txn (READ_REG, addr);
        while (txn.frames.size > 0) begin
            frame = txn.frames.pop_front ();
            drive_frame (frame);
        end
        // monitor
        $display("receive from system");
        frame = new ;
        monitor_frame (frame);
        // check
        payload = frame.get_payload ();
        assert (payload == expected_payload) $display("TESTCASE:01 write and read succeeded, received payload: %0d, expected_payload = %0d", payload, expected_payload);
        else   $error ("TESTCASE:01 write and read failed, received payload: %0d, expected_payload = %0d", payload, expected_payload);


        /*
        WRITE_REG = 'hAA,
        READ_REG = 'hBB,
        ALU_OPER = 'hCC,
        ALU_NOPER = 'hDD
        */

        // add 42 + 60
        // (cmd_e cmd, ADDR addr = 'b0, DATA payload = 'b0, op_a = 'b0, op_b = 'b0, FUNC func = 'b0);
        $display("Testcase 02: alu with oper: 42+60");
        $display("Send alu oper cmd");
        expected_alu = 'd42 + 'd60;
        txn.construct_txn (ALU_OPER, .op_a ('d42), .op_b ('d60), .func ('d0));
        while (txn.frames.size > 0) begin
            frame = txn.frames.pop_front ();
            drive_frame (frame);
        end
        // monitor
        $display("receive from system alu out LSB");
        frame = new ;
        monitor_frame (frame);
        // check
        expected_payload = DATA'(expected_alu);
        payload = frame.get_payload ();
        assert (payload == expected_payload) $display("TESTCASE:02 alu cmd succeeded of LSB, received payload: %0d, expected_payload = %0d", payload, expected_payload);
        else   $error ("TESTCASE:02 alu cmd failed of LSB, received payload: %0d, expected_payload = %0d", payload, expected_payload);

        // monitor
        $display("receive from system alu out MSB");
        frame = new ;
        monitor_frame (frame);
        // check
        expected_payload = DATA'(expected_alu[15:8]);
        payload = frame.get_payload ();
        assert (payload == expected_payload) $display("TESTCASE:02 alu cmd succeeded of MSB, received payload: %0d, expected_payload = %0d", payload, expected_payload);
        else   $error ("TESTCASE:02 alu cmd failed of MSB, received payload: %0d, expected_payload = %0d", payload, expected_payload);


        //  42 * 60
        // (cmd_e cmd, ADDR addr = 'b0, DATA payload = 'b0, op_a = 'b0, op_b = 'b0, FUNC func = 'b0);
        $display("Testcase 03: alu with no oper: 42*60");
        $display("Send alu no oper cmd");
        expected_alu = 'd42 * 'd60;
        txn.construct_txn (ALU_NOPER, .func ('d2));
        while (txn.frames.size > 0) begin
            frame = txn.frames.pop_front ();
            drive_frame (frame);
        end
        // monitor
        $display("receive from system alu out LSB");
        frame = new ;
        monitor_frame (frame);
        // check
        expected_payload = DATA'(expected_alu);
        payload = frame.get_payload ();
        assert (payload == expected_payload) $display("TESTCASE:03 alu cmd no oper succeeded of LSB, received payload: %0d, expected_payload = %0d", payload, expected_payload);
        else   $error ("TESTCASE:03 alu cmd no oper failed of LSB, received payload: %0d, expected_payload = %0d", payload, expected_payload);

        // monitor
        $display("receive from system alu out MSB");
        frame = new ;
        monitor_frame (frame);
        // check
        expected_payload = DATA'(expected_alu[15:8]);
        payload = frame.get_payload ();
        assert (payload == expected_payload) $display("TESTCASE:03 alu cmd no oper succeeded of MSB, received payload: %0d, expected_payload = %0d", payload, expected_payload);
        else   $error ("TESTCASE:03 alu cmd no oper failed of MSB, received payload: %0d, expected_payload = %0d", payload, expected_payload);

    end

    initial begin
        repeat (200) @ (posedge tb_tx_clk);
        $finish;
    end
endmodule

