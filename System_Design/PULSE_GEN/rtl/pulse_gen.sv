module pulse_gen (
    input logic clk, rst_n,
    input logic lvl_sig,
    output logic pulse_sig
);
    logic q;
    always_ff @( posedge clk or negedge rst_n ) begin : blockName
        if (!rst_n) begin
            q <= 'b0;
        end
        else begin
            q <= lvl_sig;
        end
    end

    assign pulse_sig = ~q & lvl_sig;
endmodule