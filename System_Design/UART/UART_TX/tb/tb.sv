`timescale 1ns/1ps

class txn_c;
    int width;
    rand logic [7:0] p_data_tb;       // input data path
    randc logic par_en_tb, par_typ_tb; // config
    // vars to store the first latched data before randomizing it again
    logic [7:0] p_data_tb_old;
    logic par_en_tb_old, par_typ_tb_old;
    logic exp_data [];
    logic actual_data[];
    logic par_bit_tb;
    bit rand_failed = 0;
    // negative scenarios
    rand int data_valid_asserted_n_times;
    // how many times to change the data or config and for how many clk cycles
    rand int unsigned p_data_neg [];        
    rand int unsigned par_en_neg [];
    rand int unsigned par_typ_neg [];

    constraint data_valid_asserted_n_times_c {
        data_valid_asserted_n_times < 16;
        data_valid_asserted_n_times > 0;
    }

    constraint p_data_neg_c {
        p_data_neg.size() < 8;
        p_data_neg.size() > 0;
        p_data_neg.sum() < 8;
        p_data_neg.sum() > 0;
        foreach (p_data_neg[i]) {
            p_data_neg[i] > 0;
            p_data_neg[i] < 8;
        }
    }

    constraint par_en_neg_c {
        par_en_neg.size() < 8;
        par_en_neg.size() > 0;
        par_en_neg.sum() < 8;
        par_en_neg.sum() > 0;
        foreach (par_en_neg[i]) {
           par_en_neg[i] > 0;
           par_en_neg[i] < 8; 
        }
    }

    constraint par_typ_neg_c {
        par_typ_neg.size() < 8;
        par_typ_neg.size() > 0;
        par_typ_neg.sum() < 8;
        par_typ_neg.sum() > 0;
        foreach (par_typ_neg[i]) {
            par_typ_neg[i] > 0;
            par_typ_neg[i] < 8;
        }
    }

    function new();
        assert (this.randomize()) 
        else begin
           $error ("randomization failed");
           rand_failed = 1;
        end
        if (!rand_failed) begin
            width = par_en_tb ? 11:10;
            exp_data = new[width];
            actual_data = new[width];
            void'(this.calc_expected());
            // to print the data and the config so stored them in other vars
            p_data_tb_old = p_data_tb;
            par_en_tb_old = par_en_tb;
            par_typ_tb_old = par_typ_tb;
            // $display("p_data_neg: %p", p_data_neg);
            // $display("par_en_neg: %p", par_en_neg);
            // $display("par_typ_neg: %p", par_typ_neg);
        end
    endfunction

    function calc_expected ();
        if (par_en_tb) begin
            par_bit_tb = par_typ_tb ? ~^p_data_tb : ^p_data_tb;
            exp_data[0] = 1'b0;
            exp_data[width-2] = par_bit_tb;
            exp_data[width-1] = 1'b1;
            for (int i = 1; i < width-2; i++) begin
                exp_data[i] = p_data_tb[i-1];
            end
        end
        else begin
            exp_data[0] = 1'b0;
            exp_data[width-1] = 1'b1;
            for (int i = 1; i < width-1; i++) begin
                exp_data[i] = p_data_tb[i-1];
            end
        end
    endfunction

    // task check_result (ref int error_cnt);
    //     if (exp_data != actual_data) begin
    //         error_cnt++;
    //         $error ("error message");
    //     end
    //     else begin
    //         $display ("passed");
    //     end
    // endtask


    function void check_result (ref int error_cnt);
        // Use !== for 4-state comparison so X and Z don't evaluate to 1'bx (false) in if()
        // to check for undrived signals
        if (exp_data !== actual_data) begin
            error_cnt++;
            
            // 1. High-level Failure Header with Timestamp
            $error("[FAIL] @ %0t | UART TX Frame Mismatch!", $time);
            
            // 2. Transaction Configuration & Payload Context
            $display("  +-------------------------------------------------------+");
            $display("  | Configuration : PAR_EN = %0b | PAR_TYP = %0b (%s)", 
                     par_en_tb_old, par_typ_tb_old, par_typ_tb ? "Odd" : "Even");
            $display("  | Input P_DATA  : 0x%0h (0b%08b) lsb is right msb is left", p_data_tb_old, p_data_tb_old);
            $display("  | Expected Frame: %p lsb is left msb is right", exp_data);
            $display("  | Actual Frame  : %p lsb is left msb is right", actual_data);
            $display("  +-------------------------------------------------------+");
            
            // 3. Pinpoint the Exact Bit Mismatch
            foreach (exp_data[i]) begin
                if (exp_data[i] !== actual_data[i]) begin
                    string bit_label;
                    
                    if (i == 0) 
                        bit_label = "START BIT";
                    else if (i == width - 1) 
                        bit_label = "STOP BIT";
                    else if (par_en_tb_old && i == width - 2) 
                        bit_label = "PARITY BIT";
                    else 
                        bit_label = $sformatf("DATA BIT [%0d]", i - 1);

                    $display("  [!] Mismatch at Frame Bit %0d (%s): Expected = %0b, Got = %0b", 
                             i, bit_label, exp_data[i], actual_data[i]);
                end
            end
            $display(""); 
        end
        else begin
            $display("[PASS] @ %0t | P_DATA: 0x%0h | PAR_EN: %0b | PAR_TYP: %0b (%s) | Frame Length: %0d bits", 
                     $time, p_data_tb_old, par_en_tb_old, par_typ_tb_old, 
                     par_typ_tb_old ? "Odd " : "Even", width);
        end
    endfunction
    
endclass //txn


module tb (
);
    logic clk = 0, rst_n;
    logic [7:0] p_data;       // input data path
    logic data_valid;         // ctrl path
    logic par_en, par_typ;    // config
    logic tx_out;            // output data path
    logic busy;               // transmittion busy flag

    // dut inst
    uart_tx dut (.*);

    // clk
    parameter CLK_PERIOD = 5;
    always #(CLK_PERIOD/2.0) begin
        clk = ~clk;
    end

    txn_c txns [$];
    int error_cnt;

    parameter TXNS_NUMBER = 16;
    parameter NEG_TXNS_NUMBER = 16;

    task automatic drive_txn (txn_c txn, input bit en_neg_scen = 0);
        p_data = txn.p_data_tb;
        par_en = txn.par_en_tb;
        par_typ = txn.par_typ_tb;
        data_valid = 1;
        if (en_neg_scen) begin
            @(negedge clk);
           disable keep_asserted; // to avoid non deterministic write-write race by another spawn of this task 
           //(when another txn is being drived), as i configured so it can change after end of txn though it has very low probailty to occur
           // the rest of forks i left as they not neccassry as it at most will run for 7 cycles thus the new drive txn wont be called yet
            fork
                begin: keep_asserted
                    repeat (txn.data_valid_asserted_n_times) @(negedge clk);
                    data_valid = 0;
                end
                begin: change_p_data
                    foreach (txn.p_data_neg[i]) begin
                        repeat (txn.p_data_neg[i]) @(negedge clk);
                        txn.randomize(p_data_tb);
                        p_data = txn.p_data_tb;
                    end
                end
                begin: change_par_en
                    foreach (txn.par_en_neg[i]) begin
                        repeat (txn.par_en_neg[i]) @(negedge clk);
                        txn.randomize(par_en_tb);
                        par_en = txn.par_en_tb;
                    end
                end
                begin: change_par_typ
                    foreach (txn.par_typ_neg[i]) begin
                        repeat (txn.par_typ_neg[i]) @(negedge clk);
                        txn.randomize(par_typ_tb);
                        par_typ = txn.par_typ_tb;
                    end
                end
            join_none
        end
        else begin
            @(negedge clk);
            data_valid = 0;
        end
    endtask

    task automatic monitor_txn (ref txn_c txn, input bit en_back = 1);
        for (int i = 0; i < txn.width; i++) begin
            // $display("txn bit%0d", i);
            assert (busy) begin
                txn.actual_data[i] = tx_out;
            end else begin
                $error("txn started but busy: %h, no tx_out latched", busy);
            end
            if (!(en_back && (i == txn.width-1))) @(negedge clk);   // skip at last cycle to allow b2b
        end
    endtask

    task automatic create_txns (input int txns_number);
        // note that randc doesnt work accross different txn objects, as it's related to one object
        for (int i = 0; i < txns_number; i++) begin
            txn_c txn = new ();
            if (txn.rand_failed) continue;
            txns.push_back(txn);
        end
    endtask //

    initial begin
        txn_c txn;
        create_txns (TXNS_NUMBER);
        rst_n = 0;
        @(negedge clk);
        rst_n = 1;
        $display("Positive Scenarios test case (data_valid is asserted for one cycle)");
        // txns test with one idle gap (positive scenario)
        $display("running %0d txns test with one idle gap", TXNS_NUMBER/2);
        for (int i = 0; i < TXNS_NUMBER/2; i++) begin
            txn = txns.pop_front();
            drive_txn (txn);
            monitor_txn (txn, 0);
            txn.check_result (error_cnt);
        end
        // back to back (positive scenario)
        $display("running %0d Back to Back txns", TXNS_NUMBER/2);
        for (int i = 0; i < TXNS_NUMBER/2; i++) begin
            txn = txns.pop_front();
            drive_txn (txn);
            monitor_txn (txn, 1);
            txn.check_result (error_cnt);
        end
        // data_valid (negative scenario)
        create_txns (NEG_TXNS_NUMBER);
        $display("running %0d data_valid (negative scenario)", NEG_TXNS_NUMBER);
        for (int i = 0; i < NEG_TXNS_NUMBER; i++) begin
            txn = txns.pop_front();
            drive_txn (txn, 1);
            monitor_txn (txn, 1);
            txn.check_result (error_cnt);
        end
    end

    initial begin
        repeat (12*TXNS_NUMBER) #CLK_PERIOD;
        repeat (12*NEG_TXNS_NUMBER) #CLK_PERIOD;
        if (error_cnt > 0) begin
            $display ("%0d test(s) failed", error_cnt);
        end
        else begin
            $display("test passed");
        end
        $stop;
    end
endmodule

