module uart_tx # (
    parameter DATA_WIDTH = 8
)(
    input logic clk, rst_n,
    input logic [7:0] p_data,       // input data path
    input logic data_valid,         // ctrl path
    input logic par_en, par_typ,    // config
    output logic tx_out,            // output data path
    output logic busy               // transmittion busy flag
);
    // controler
    logic latch_data;
    tx_controller controller_inst (.*);  
    // serializer
    logic ser_en;
    logic ser_data, ser_done;
    serializer serializer_inst (.*); 
    // parity
    logic par_bit;
    parity_calc parity_calc_inst (.*); 
    // mux
    logic [1:0] mux_sel;
    logic [3:0] mux_in; 
    assign mux_in = {par_bit, ser_data, 1'b1, 1'b0};
    mux mux_inst (.*);
endmodule
