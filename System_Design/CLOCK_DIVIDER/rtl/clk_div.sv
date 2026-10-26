module clk_div #( 
 parameter RATIO_WIDTH = 8 
)(
    input logic i_ref_clk,
    input logic i_rst_n,
    input logic i_clk_en,
    input logic [RATIO_WIDTH-1:0] i_div_ratio,
    output logic o_div_clk
);
    // when div ratio is odd,
    // then div clk is i_div_ratio>>1 ref clk cycles high,
    // and (i_div_ratio>>1) + 1 ref clk cycles low
    logic odd_div_ratio;
    assign odd_div_ratio = i_div_ratio[0];

    logic clk_en;
    assign clk_en = i_clk_en & (i_div_ratio != 'b0 & i_div_ratio != 'b1);

    logic odd;
    logic [RATIO_WIDTH-2:0] counter;
    logic [RATIO_WIDTH-2:0] clk_div_ratio_by_2;
    assign clk_div_ratio_by_2 = i_div_ratio >> 1;

    logic div_clk;

    // assign o_div_clk = (clk_en & i_rst_n) ? div_clk : i_ref_clk;
    assign o_div_clk = clk_en ? div_clk : i_ref_clk;

    always_ff @( posedge i_ref_clk or negedge i_rst_n ) begin : clkdiv_logic
        if (!i_rst_n) begin
            div_clk <= 'b0;
            counter <= 'b0;
            odd <= 'b1;
        end
        else if (clk_en) begin
            if (!odd_div_ratio & (counter == clk_div_ratio_by_2-'b1)) begin
                div_clk <= ~div_clk;
                counter <= 'b0;
            end
            else if (odd_div_ratio & (((counter == clk_div_ratio_by_2-'b1) & odd) | ((counter == clk_div_ratio_by_2) & ~odd)) ) begin
                div_clk <= ~div_clk;
                counter <= 'b0;
                odd <= ~odd;
            end
            else begin
                counter <= counter + 'b1;
            end
        end
        else begin
            counter <= 'b0;
        end
    end

endmodule
