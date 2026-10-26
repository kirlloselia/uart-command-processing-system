module parity_calc #(
    parameter MAX_WIDTH = 8
) (
    input logic clk, rst_n,
    input logic [MAX_WIDTH-1:0] p_data, // parallel data
    input logic latch_data,             // ctrl signal
    input logic par_typ,                // config signal
    output logic par_bit                // parity bit
);
    // latch config and data when data_valid is sampled high
    logic [MAX_WIDTH-1:0] p_data_latched;
    logic par_typ_latched;

    always_ff @( posedge clk or negedge rst_n ) begin : latch_data_logic
        if (!rst_n) begin
            p_data_latched <= 'b0;
            par_typ_latched <= 'b0;
        end
        else if (latch_data) begin
            p_data_latched <= p_data;
            par_typ_latched <= par_typ;
        end
    end
    assign par_bit = par_typ_latched ? ~^p_data_latched : ^p_data_latched;
endmodule