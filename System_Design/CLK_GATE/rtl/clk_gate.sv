module clk_gate #(
    parameter USE_ICG = 1
)(
    input logic clk,
    input logic clk_en,
    output logic gated_clk
);

    if (USE_ICG) begin
        TLATNCAX4M U0 (
            .E(clk_en),
            .CK(clk),
            .ECK(gated_clk)
        ); 
    end
    else begin
        logic clk_en_latch;
        always_latch begin : clk_en_latch_logic
            if (!clk) begin
                clk_en_latch <= clk_en;
            end
        end
        assign gated_clk = clk_en_latch & clk;
    end
endmodule
