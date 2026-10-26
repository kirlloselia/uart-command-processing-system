module rst_sync #(
    parameter NUM_STAGES = 2,
    parameter RST_ASSERT = 0
) (
    input logic rst, clk,
    output logic sync_rst
);
    localparam BUS_WIDTH = 1;
    generate
        if (!RST_ASSERT) begin
            bit_sync
            #(  .NUM_STAGES(NUM_STAGES),
                .BUS_WIDTH(BUS_WIDTH)
            )
            bit_sync_inst 
            (
                .clk (clk),
                .rst_n (rst),
                .async (1'b1),
                .sync (sync_rst)
            );
        end
        else begin
            bit_sync
            #(  .NUM_STAGES(NUM_STAGES),
                .BUS_WIDTH(BUS_WIDTH)
            )
            bit_sync_inst 
            (
                .clk (clk),
                .rst_n (~rst),
                .async (1'b0),
                .sync (sync_rst)
            );
        end
    endgenerate
endmodule