`timescale 1ns/1ps
module tb;
    parameter ADDR_WIDTH = 4;
    parameter DATA_WIDTH = 8;
    parameter CLK_PERIOD = 10;
    logic clk = 0;
    logic rst_n;                 // cll, rst signals
    logic [ADDR_WIDTH-1:0] addr;      // ctrl 
    logic wr_en, rd_en;               // ctrl
    logic [DATA_WIDTH-1:0] wr_data;   // data path
    logic [DATA_WIDTH-1:0] rd_data;  // data path
    logic rd_data_valid;             // ctrl
    logic [DATA_WIDTH-1:0] reg_0;   // data path ALU Operand A 
    logic [DATA_WIDTH-1:0] reg_1;    // data path ALU Operand B
    logic [DATA_WIDTH-1:0] reg_2;    // data path UART Config 
    logic [DATA_WIDTH-1:0] reg_3;     // data path Div Ratio

    // clk gen
    always #(CLK_PERIOD/2) clk = ~ clk;

    // dut inst
    RegFile dut (.*);

    // reset
    task reset();
        rst_n <= 'b0;
        repeat (5) @(posedge clk);
        #1;
        rst_n <= 'b1;
        #1step;
    endtask

    task drive_read (input logic [ADDR_WIDTH-1:0] drv_addr);
        addr <= drv_addr;
        rd_en <= 'b1;
        @(posedge clk);
        rd_en <= 'b0;
        #1step;
    endtask

    task drive_write (input logic [ADDR_WIDTH-1:0] drv_addr, input logic [DATA_WIDTH-1:0] drv_wr_data);
        addr <= drv_addr;
        wr_data <= drv_wr_data;
        wr_en <= 'b1;
        @(posedge clk);
        wr_en <= 'b0;
        #1step;
    endtask

    task monitor_read (output logic [DATA_WIDTH-1:0] mon_rd_data,
                       output logic mon_rd_data_valid);
        @(posedge clk);
        mon_rd_data <= rd_data;
        mon_rd_data_valid <= rd_data_valid;
        #1step;
    endtask

    task check_reset ();
        @ (posedge clk);
        assert (reg_2 === 'b1000_0000) $display("REG2 reset value successeded"); 
        else   $error ("reg_2 (%b) != 'b1000_0000", reg_2);
        assert (reg_3 === 'd32) $display("REG3 reset value successeded"); 
        else   $error ("reg_3 (%d) != 32", reg_3);
    endtask

    initial begin
        int data;
        bit valid;
        reset();
        check_reset ();
        for (int i = 0; i < 4; i++) begin
            drive_write (i, i);
        end
        for (int i = 0; i < 4; i++) begin
            drive_read (i);
            monitor_read (data, valid);
            assert (data === i) 
            else   $error ("err in reading mem[%0d]", i);
            assert (valid === 1) 
            else   $error ("err in valid");
        end
        
    end
    initial begin
        repeat (10) @(posedge clk);
        $finish;
    end
endmodule