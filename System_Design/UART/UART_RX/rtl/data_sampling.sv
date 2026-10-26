module data_sampling #(
    parameter MAX_WIDTH = 6
)(
    input logic clk, rst_n,
    input logic [5:0] prescale,             // datapath (prescale value)
    input logic rx_in,                      // datapath (input from rx)
    input logic dat_samp_en,                // ctrl path
    input logic [MAX_WIDTH-1:0] edge_cnt,   // timing
    output logic bit_valid,                 // bit sampling finished
    output logic sampled_bit                // datapath (sampled bit)
);

    logic [5:0] prescale_div_2;         // prescale / 2
    assign prescale_div_2 = prescale >> 'b1;

    // samples taken at prescale-2, prescale-1 (before mid, mid)
    logic [1:0] s;

    always_ff @( posedge clk or negedge rst_n ) begin : bit_sampling_logic
        if (!rst_n) begin
            sampled_bit <= 'b1;
            bit_valid <= 'b0;
            s <= 'b0;
        end
        else if (dat_samp_en) begin
            case (prescale)
                'd4: begin
                    bit_valid <= 'b0;
                    if (edge_cnt == prescale_div_2-'d1) begin  // (4/2-1) as the edge will get updated to middle at the middle thus we need to check for the previous value 
                        sampled_bit <= rx_in;
                        bit_valid <= 'b1;
                    end
                   end
                'd8, 'd16, 'd32: begin
                    bit_valid <= 'b0;
                    if (edge_cnt == prescale_div_2-'d2) begin  // bit sampled at prescale/2 - 2 
                        s[0] <= rx_in;
                    end
                    else if (edge_cnt == prescale_div_2-'d1) begin  // bit sampled at prescale/2 - 1 
                        s[1] <= rx_in;
                    end
                    else if (edge_cnt == prescale_div_2) begin  // bit sampled at prescale/2
                        sampled_bit <= (s[0] & rx_in) | (s[1] & rx_in) | (s[0] & s[1]);     // majority circuit,
                        // no need to register the final sampled bit and we can evaluate directly
                        bit_valid <= 'b1;
                    end
                end
                default: begin
                    bit_valid <= 'b0;
                end
            endcase
        end
        else begin
            sampled_bit <= 'b1;
            bit_valid <= 'b0;
        end
    end
endmodule
