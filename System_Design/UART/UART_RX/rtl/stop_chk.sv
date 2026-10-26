module stop_check (
    input logic clk, rst_n,
    input logic sampled_bit,        // datapath (stop bit)
    input logic stp_chk_en,         // ctrl path
    output logic stp_err
);

    always_ff @( posedge clk or negedge rst_n) begin : output_logic
        if (!rst_n) begin
            stp_err <= 'b0;
        end
        else if (stp_chk_en) begin
            stp_err <= ~sampled_bit;
        end
    end

endmodule