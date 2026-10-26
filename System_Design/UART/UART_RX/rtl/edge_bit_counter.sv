// edge_cnt from 0 to prescale - 1
// so at the midpoint the logic sees edge_cnt = 1 not 2,
// as it will update to 2 in this edge
module edge_bit_counter #(
    parameter MAX_WIDTH = 6        // prescale is 6 bits
)(
    input logic clk, rst_n,
    input logic [5:0] prescale,             // datapath (prescale value)
    input logic cnt_en,   // ctrl path
    output logic [MAX_WIDTH-1:0] edge_cnt,  // timing
    output logic [3:0] bit_cnt  // max is 10 bits (no parity) or 11 bits (with parity)
);
    always_ff @( posedge clk or negedge rst_n ) begin : edge_cnt_logic
        if (!rst_n) begin
            edge_cnt <= 'b0;
        end
        else if (cnt_en) begin
            edge_cnt <= (edge_cnt == prescale-'b1) ? 'b0 : (edge_cnt + 'b1);
        end
        else begin
            edge_cnt <= 'b0;    // start of new frame if ~cnt_en 
        end
    end

    always_ff @( posedge clk or negedge rst_n ) begin : bit_cnt_logic
        if (!rst_n) begin
            bit_cnt <= 'b0;
        end
        else if (cnt_en) begin
            if (edge_cnt == prescale-'b1) begin
            // if (edge_cnt == prescale-'b2) begin
               bit_cnt <= bit_cnt + 'b1; 
            end
        end
        else begin
            bit_cnt <= 'b0;    // start of new frame if ~cnt_en  
            // (bit_cnt = 0 means that we are sampling the start bit)
        end
    end
endmodule
