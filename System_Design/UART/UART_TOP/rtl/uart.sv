module uart # ( parameter DATA_WIDTH = 8)

(
 input   logic                         rst_n,        // common rst
 input   logic                         tx_clk,       // tx clk
 input   logic                         rx_clk,       // rx clk
 input   logic                         rx_in,        // rx input serial data
 output  logic   [DATA_WIDTH-1:0]      rx_p_data,       // rx output parallel data 
 output  logic                         rx_data_valid, // rx output valid signal
 input   logic   [DATA_WIDTH-1:0]      tx_p_data,        // tx input parallel data      
 input   logic                         tx_data_valid,  // tx input valid signal
 output  logic                         tx_out,       // tx output serial data
 output  logic                         tx_busy,      // tx busy signal  
 input   logic   [5:0]                 prescale,     // config
 input   logic                         parity_enable, // config
 input   logic                         parity_type,  // config 
 output  logic                         parity_error, // err flags
 output  logic                         framing_error // err flags
);


uart_tx  #(.DATA_WIDTH(DATA_WIDTH)) U0_UART_TX (
   .clk(tx_clk),
   .rst_n(rst_n),
   .p_data(tx_p_data),
   .data_valid(tx_data_valid),
   .par_en(parity_enable),
   .par_typ(parity_type), 
   .tx_out(tx_out),
   .busy(tx_busy)
);
 
uart_rx #(.DATA_WIDTH(DATA_WIDTH)) U0_UART_RX (
   .clk(rx_clk),
   .rst_n(rst_n),
   .rx_in(rx_in),
   .prescale(prescale),
   .par_en(parity_enable),
   .par_typ(parity_type),
   .p_data(rx_p_data), 
   .data_valid(rx_data_valid),
   .par_err(parity_error),
   .stp_err(framing_error)
);

endmodule
