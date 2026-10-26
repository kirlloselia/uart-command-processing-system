module mux (
    input logic [1:0] mux_sel,
    input logic [3:0] mux_in,
    output logic tx_out
);
    assign tx_out = mux_in[mux_sel];
endmodule