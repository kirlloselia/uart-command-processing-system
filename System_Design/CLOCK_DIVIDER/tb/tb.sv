`timescale 1ns/1ps

module tb (
);
    // clk generation
    logic i_ref_clk = 'b0;

    localparam CLK_PERIOD = 10;
    always #(CLK_PERIOD/2) i_ref_clk = ~i_ref_clk;

    // dut inst
    localparam RATIO_WIDTH = 8;
    logic i_rst_n;
    logic i_clk_en;
    logic [RATIO_WIDTH-1:0] i_div_ratio;
    logic o_div_clk;


    clk_div dut (.*);

    initial begin
        i_rst_n = 1'b1 ;
        i_clk_en = 1'b1 ;
        i_div_ratio = 'd7 ;
        #4
        i_rst_n = 1'b0 ;
        #4
        i_rst_n = 1'b1 ;
        repeat (20) #CLK_PERIOD;
        #4
        i_rst_n = 1'b0 ;
        i_div_ratio = 'd6 ;
        #4
        i_rst_n = 1'b1 ;
        repeat (20) #CLK_PERIOD;
    end

    initial begin
        repeat (200) #CLK_PERIOD;
        $finish();
    end
endmodule