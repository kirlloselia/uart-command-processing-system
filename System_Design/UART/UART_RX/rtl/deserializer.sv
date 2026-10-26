module deserializer (
    input logic clk, rst_n,
    input logic sampled_bit,        // datapath (stop bit)
    input logic deser_en,         // ctrl path
    output logic [7:0] p_data
);
    always_ff @( posedge clk or negedge rst_n) begin : output_logic
        if (!rst_n) begin
            p_data <= 'b0;
        end
        else if (deser_en) begin
            p_data <= {sampled_bit, p_data[7:1]};
        end
    end

endmodule