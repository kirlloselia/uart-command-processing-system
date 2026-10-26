module tb;
    logic clk = 0;
    logic clk_en;
    logic gated_clk;

    // clk gen
    parameter CLK_PERIOD = 10;
    always #(CLK_PERIOD/2) clk = ~ clk;
    // dut
    clk_gate dut (.*);
    initial begin
        clk_en = 0;
        repeat (5) begin
            @(posedge clk);
            assert (gated_clk === 0) 
            else   $error ("failed");
        end
        #(CLK_PERIOD/4);
        clk_en = 1;
        assert (gated_clk === 0) 
        else   $error ("failed");
        @(posedge clk);
        #1step;
        assert (gated_clk === 1) 
        else   $error ("failed");
        @(negedge clk);
        #1step;
        assert (gated_clk === 0) 
        else   $error ("failed");
        $finish;
    end
endmodule