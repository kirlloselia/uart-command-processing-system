module tb;
     // clk generation
    logic clk = 'b0;

    localparam CLK_PERIOD = 10;
    always #(CLK_PERIOD/2) clk = ~clk;

    
    parameter NUM_STAGES = 2;
    logic rst;
    logic sync_rst;

    rst_sync dut (.*);

    task drive_rst ();
        rst <= 'b0;
        repeat (5) @(posedge clk);
        #(CLK_PERIOD/4);
        rst <= 'b1;
        #1step;
    endtask

    task monitor_rst ();
        repeat (NUM_STAGES) begin
            assert (!sync_rst) $display("[SUCCESS] no async reset deassertion detected");
            else   $error ("[FAIL] async reset deassertion detected"); 
            @(posedge clk);
        end
        @(posedge clk);
        assert (sync_rst) $display("sync reset deassertion successed");
        else   $error ("sync reset deassertion failed");
    endtask


    initial begin
        drive_rst ();
        monitor_rst ();
    end

    initial begin
        repeat (10) @(posedge clk);
        $finish;
    end
endmodule