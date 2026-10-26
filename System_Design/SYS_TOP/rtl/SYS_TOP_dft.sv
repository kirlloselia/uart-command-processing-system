module SYS_TOP #(
    parameter ADDR_WIDTH = 4,       // regfile addr width
    parameter DATA_WIDTH = 8,       // data width
    parameter FUN_WIDTH = 4,        // alu func width
    parameter OUT_WIDTH = 2*DATA_WIDTH, // alu output width
    parameter RATIO_WIDTH = 8,       // clk div ratio width
    parameter FIFO_DEPTH = 8,
    parameter USE_ICG = 1,
    parameter NUM_OF_CHAINS = 4
) (
    // func
    input logic REF_CLK, UART_CLK,  // system clks
    input logic RST_N,              // system rst
    input logic UART_RX_IN,              // serial input data path
    output logic UART_TX_OUT,            // serial output data path
    // for debugging 
    output logic parity_error,      // err flags
    output logic framing_error,      // err flags
    // dft
    input  logic                        scan_clk  ,
    input  logic                        scan_rst  ,
    input  logic                        test_mode ,
    input  logic                        SE        ,
    input  logic [NUM_OF_CHAINS-1:0]    SI        ,
    output logic [NUM_OF_CHAINS-1:0]    SO        
);

    // ports mapping
    logic ref_clk, uart_clk;  // system clks
    logic rst_n;              // system rst
    logic rx_in;              // serial input data path
    logic tx_out;            // serial output data path

    assign rst_n = RST_N;
    assign ref_clk = REF_CLK;
    assign uart_clk = UART_CLK;
    assign rx_in = UART_RX_IN;
    assign UART_TX_OUT = tx_out;

    // dft logic
    logic scan_func_rst;
    logic scan_func_ref_clk;
    logic scan_func_uart_clk;

    assign scan_func_rst = test_mode ? scan_rst : rst_n;

    assign scan_func_ref_clk = test_mode ? scan_clk : ref_clk;

    assign scan_func_uart_clk = test_mode ? scan_clk : uart_clk;
    
    
    
    // rst sync
    logic d0_sync_rst_n, d1_sync_rst_n;

    // reset sync of ref domain
    rst_sync d0_rst_sync_inst (
        .clk (scan_func_ref_clk),
        .rst (scan_func_rst),
        .sync_rst (d0_sync_rst_n)
    ); 


    // reset sync of uart domain
    rst_sync d1_rst_sync_inst (
        .clk (scan_func_uart_clk),
        .rst (scan_func_rst),
        .sync_rst (d1_sync_rst_n)
    ); 

    // dft logic
    logic d0_scan_func_rst, d1_scan_func_rst;

    assign d0_scan_func_rst = test_mode ? scan_rst : d0_sync_rst_n;

    assign d1_scan_func_rst = test_mode ? scan_rst : d1_sync_rst_n;

    // tx, rx clk div ratio
    logic [7:0] tx_div_ratio, rx_div_ratio; 
    logic [5:0] prescale;

    div_mux div_mux_inst (.*);

    // tx, rx clk div ratio
    logic tx_clk, rx_clk;   // (GENERATED uart domain)
    logic clk_div_en;

    // tx clk (GENERATED uart domain)
    clk_div #(.RATIO_WIDTH(RATIO_WIDTH)) 
            tx_clk_div_inst
            (
                .i_ref_clk (scan_func_uart_clk),
                .i_rst_n (d1_scan_func_rst),
                .i_clk_en (clk_div_en),
                .i_div_ratio (tx_div_ratio),
                .o_div_clk (tx_clk)
            );

    // rx clk (GENERATED uart domain)
    clk_div #(
            .RATIO_WIDTH(RATIO_WIDTH)
    ) 
    rx_clk_div_inst
    (
        .i_ref_clk (scan_func_uart_clk),
        .i_rst_n (d1_scan_func_rst),
        .i_clk_en (clk_div_en),
        .i_div_ratio (rx_div_ratio),
        .o_div_clk (rx_clk)
    ); 



    // dft logic
    logic scan_func_tx_clk, scan_func_rx_clk;

    assign scan_func_tx_clk = test_mode ? scan_clk : tx_clk;

    assign scan_func_rx_clk = test_mode ? scan_clk : rx_clk;

    
    // uart inst

    // logic                         rx_in;        // rx input serial data
    logic   [DATA_WIDTH-1:0]      rx_p_data;       // rx output parallel data 
    logic                         rx_data_valid; // rx output valid signal
    logic   [DATA_WIDTH-1:0]      tx_p_data;        // tx input parallel data      
    logic                         tx_data_valid;  // tx input valid signal
    // logic                         tx_out;       // tx output serial data
    logic                         tx_busy;      // tx busy signal  
    logic                         parity_enable; // config
    logic                         parity_type;  // config 

    uart #(
        .DATA_WIDTH(DATA_WIDTH)
    ) 
    uart_inst
    (
        .*,
        .tx_clk (scan_func_tx_clk),
        .rx_clk (scan_func_rx_clk),
        .rst_n (d1_scan_func_rst)
    );


    // clk gating inst

    logic clk_en;
    logic gated_clk;    // (GENERATED ref domain)

    clk_gate #(.USE_ICG (USE_ICG)) clk_gate_inst (.*, .clk (scan_func_ref_clk), .clk_en (clk_en | test_mode)); 
    
    // alu inst

    logic [DATA_WIDTH-1:0] op_a, op_b;      // data path operands
    logic [FUN_WIDTH-1:0] alu_fun;    // ctrl
    logic alu_en;
    logic alu_out_valid;                 // ctrl
    logic [OUT_WIDTH-1:0] alu_out;   // data path
    
    ALU #(
        .DATA_WIDTH (DATA_WIDTH),
        .FUN_WIDTH (FUN_WIDTH),
        .OUT_WIDTH (OUT_WIDTH)
    ) 
    ALU_inst 
    (
        .*,
        .clk (gated_clk),
        .rst_n (d0_scan_func_rst)
    );

    // reg file inst

    logic   [ADDR_WIDTH-1:0]        addr;           // ctrl 
    logic                           wr_en, rd_en;   // ctrl
    logic   [DATA_WIDTH-1:0]        wr_data;        // data path
    logic   [DATA_WIDTH-1:0]        rd_data;        // data path
    logic                           rd_data_valid;  // ctrl
    // logic   [DATA_WIDTH-1:0]        reg_0,          // data path ALU Operand A 
    // logic   [DATA_WIDTH-1:0]        reg_1,          // data path ALU Operand B
    // logic   [DATA_WIDTH-1:0]        reg_2,          // data path UART Config 
    // logic   [DATA_WIDTH-1:0]        reg_3           // data path Div Ratio

    RegFile #(
        .ADDR_WIDTH (ADDR_WIDTH),
        .DATA_WIDTH (DATA_WIDTH)
    ) 
    RegFile_inst 
    (
        .*,
        .clk (scan_func_ref_clk),
        .rst_n (d0_scan_func_rst),
        .reg_0 (op_a),
        .reg_1 (op_b),
        .reg_2 ({prescale, parity_type, parity_enable}), 
        .reg_3 (tx_div_ratio)
    );


    // async fifo inst (sync ref domain to uart domain) fast to slow

    // logic wclk,
    // logic rclk,
    // logic w_rst,
    // logic r_rst,
    logic wr_inc;
    logic rd_inc;
    logic [DATA_WIDTH-1:0] f_data_in;
    logic empty_flag;
    logic full_flag;
    // logic [DATA_WIDTH-1:0] f_data_out

    ASYNC_FIFO #(
        .DATA_WIDTH (DATA_WIDTH),
        .DEPTH (FIFO_DEPTH)
    )
    ASYNC_FIFO_inst 
    (
        .*,
        .wclk (scan_func_ref_clk),
        .rclk (scan_func_tx_clk),
        .w_rst (d0_scan_func_rst),
        .r_rst (d1_scan_func_rst),
        .f_data_out (tx_p_data)
    );

    assign tx_data_valid = ~ empty_flag;

    // pulse_gen inst
    pulse_gen pulse_gen_inst 
    (
        .clk (scan_func_tx_clk),
        .rst_n (d1_scan_func_rst),
        .lvl_sig (tx_busy),
        .pulse_sig (rd_inc)
    );


    // sys ctrl inst

    logic    [DATA_WIDTH-1:0]    payload;      // sync rx output parallel data 
    logic                        payload_valid;  // sync rx output valid signal

    sys_ctrl #(
        .ADDR_WIDTH (ADDR_WIDTH),
        .DATA_WIDTH (DATA_WIDTH),
        .FUN_WIDTH (FUN_WIDTH),
        .OUT_WIDTH (OUT_WIDTH) 
    ) 
    sys_ctrl_inst
    (
        .*,
        .clk (scan_func_ref_clk),
        .rst_n (d0_scan_func_rst)
    );


    // data_sync (sync uart domain to ref domain) slow to fast

    data_sync #(
        .BUS_WIDTH (DATA_WIDTH)
    )
    data_sync_inst
    (
        .clk (scan_func_ref_clk),         // d0 clk 
        .rst_n (d0_scan_func_rst), // do rst
        .bus_enable (rx_data_valid),
        .unsync_bus (rx_p_data),
        .sync_bus (payload),
        .enable_pulse (payload_valid)
    ); 
endmodule


