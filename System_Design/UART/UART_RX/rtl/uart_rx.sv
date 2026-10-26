module uart_rx #(
    parameter DATA_WIDTH     = 8,
    parameter PRESCALE_WIDTH = 6,
    parameter MAX_WIDTH      = 6
)(
    input  logic                      clk, rst_n,
    input  logic                      par_typ,       // parity type (0: even, 1: odd)
    input  logic                      par_en,        // parity enable
    input  logic [PRESCALE_WIDTH-1:0] prescale,      // oversampling prescale
    input  logic                      rx_in,         // serial data in
    
    output logic [DATA_WIDTH-1:0]     p_data,        // frame data byte
    output logic                      data_valid,    // data byte valid signal
    output logic                      par_err,       // frame parity error
    output logic                      stp_err        // frame stop error
);

    // =========================================================================
    // Internal Signals
    // =========================================================================
    // Counter interface
    logic                      cnt_en;
    logic [MAX_WIDTH-1:0]      edge_cnt;
    logic [3:0]                bit_cnt;
    logic                      bit_valid;

    // Data sampler interface
    logic                      dat_samp_en;
    logic                      sampled_bit;

    // Deserializer interface
    logic                      deser_en;

    // Checker enables and status
    logic                      strt_chk_en;
    logic                      strt_glitch;
    logic                      par_chk_en;
    logic                      stp_chk_en;
    logic                      par_pdata_en;

    // Parity check interface config signals
    logic                      par_typ_latched;


    // =========================================================================
    // Submodule Instantiations (Wildcard Port Connections)
    // =========================================================================

    // FSM Controller
    rx_controller controller_inst (.*);

    // Timing & Bit Counter
    edge_bit_counter #(
        .MAX_WIDTH (MAX_WIDTH)
    ) edge_bit_counter_inst (.*);

    // Majority-Vote Data Sampler
    data_sampling #(
        .MAX_WIDTH (MAX_WIDTH)
    ) data_sampling_inst (.*);

    // Serial-to-Parallel Converter
    deserializer deserializer_inst (.*);

    // Start Bit Glitch Checker
    start_check start_check_inst (.*);

    // Parity Checker
    parity_check parity_check_inst (.*);

    // Stop Bit Checker
    stop_check stop_check_inst (.*);

endmodule
