module parity_check (
    input logic clk, rst_n,
    input logic par_typ_latched,    // config
    input logic sampled_bit,        // datapath (parity bit)
    input logic [7:0] p_data,
    input logic par_chk_en, par_pdata_en,   // ctrl path
    output logic par_err
);
    // to avoid high power consuption and glitches 
    logic [7:0] par_p_data;
    assign par_p_data = par_pdata_en ? p_data : 'b0;

    always_ff @( posedge clk or negedge rst_n) begin : output_logic
        if (!rst_n) begin
            par_err <= 'b0;
        end
        else if (par_chk_en) begin
            par_err <= ((^par_p_data) ^ sampled_bit) ^ par_typ_latched;
        end
    end

endmodule