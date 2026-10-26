// custom mux implementation to calculate rx clk div ratio based on tx clk div ratio and prescale
// freq calculation:
// tx_clk = uart_clk / tx_div_ratio
// rx_clk = tx_clk * prescale
// rx_clk = (uart_clk / tx_div_ratio) * prescale
// rx_clk = uart_clk / rx_div_ratio
// rx_div_ratio = tx_div_ratio / prescale
module div_mux (
    input logic [7:0] tx_div_ratio,
    input logic [5:0] prescale,
    output logic [7:0] rx_div_ratio
);

    always_comb begin : rx_div_ratio_logic
        // 2^n = prescale
        // rx_div_ratio = tx_div_ratio >> n
        case (prescale)
            'd4: begin
                rx_div_ratio = tx_div_ratio >> 2;
            end
            'd8: begin
                rx_div_ratio = tx_div_ratio >> 3;
            end
            'd16: begin
                rx_div_ratio = tx_div_ratio >> 4;
            end
            'd32: begin
                rx_div_ratio = tx_div_ratio >> 5;
            end 
            default: begin
                rx_div_ratio = 'b1;
            end
        endcase
    end
    
endmodule