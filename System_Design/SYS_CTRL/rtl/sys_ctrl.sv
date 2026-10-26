module sys_ctrl #(
    parameter ADDR_WIDTH = 4,
    parameter DATA_WIDTH = 8,
    parameter FUN_WIDTH = 4,
    parameter OUT_WIDTH = 2*DATA_WIDTH
) (
    input logic clk, rst_n,             // clk, rst
    // uart interface
    input  logic    [DATA_WIDTH-1:0]    payload,      // sync rx output parallel data 
    input  logic                        payload_valid,  // sync rx output valid signal
    // regfile interface
    output logic    [ADDR_WIDTH-1:0]    addr,
    output logic                        wr_en, rd_en,   // ctrl
    output logic    [DATA_WIDTH-1:0]    wr_data,        // data path
    input logic     [DATA_WIDTH-1:0]    rd_data,        // data path
    input logic                         rd_data_valid,  // ctrl
    // alu interface
    output logic    [FUN_WIDTH-1:0]     alu_fun,    // ctrl
    output logic                        alu_en,
    input logic                         alu_out_valid,                 // ctrl
    input logic     [OUT_WIDTH-1:0]     alu_out,   // data path
    // clk div
    output logic                        clk_div_en,
    // alu clk gate enable
    output logic                        clk_en,
    // fifo interface
    output logic                        wr_inc,
    output logic    [DATA_WIDTH-1:0]    f_data_in,
    input logic                         full_flag
);
    typedef enum logic [3:0] { 
        IDLE,
        WR_ADDR,
        WR_DATA,
        RD_ADDR,
        RD_WAIT,
        ALU_OP_A,
        ALU_OP_B,
        ALU_FUN,
        ALU_WAIT,
        ALU_OUT     // this state to send the MSB of alu_out
    } state_e;

    state_e current_state, next_state;

    // ctrl signals to register payload
    logic register_addr;
    // addr logic
    // we need to register addr as it will get overridden by next frames' payload
    typedef enum logic [1:0] { 
        OP_A_ADDR,
        OP_B_ADDR,
        PAYLOAD_ADDR
    } addr_e;

    logic [ADDR_WIDTH-1:0] paylaod_addr;
    always_ff @( posedge clk or negedge rst_n ) begin : paylaod_addr_logic
        if (!rst_n) begin
            paylaod_addr <= 'b0;
        end
        else if (register_addr & payload_valid) begin
            paylaod_addr <= payload [ADDR_WIDTH-1:0];
        end
    end

    addr_e addr_sel;

    always_comb begin : addr_logic
        case (addr_sel)
            OP_A_ADDR: addr = 'b0;
            OP_B_ADDR: addr = 'b1;
            PAYLOAD_ADDR: addr = paylaod_addr;
            default: addr = 'b0;
        endcase
    end

    // register data logic
    // ctrl signals to register payload
    /*
    logic register_data;
    logic [DATA_WIDTH-1:0] paylaod_data;
    always_ff @( posedge clk or negedge rst_n ) begin : paylaod_addr_logic
        if (!rst_n) begin
            paylaod_data <= 'b0;
        end
        else if (register_data & payload_valid) begin
            paylaod_data <= payload;
        end
    end
    assign wr_data = paylaod_data;
    assign alu_fun = paylaod_data [FUN_WIDTH-1:0];
    */
    // not important since uart is much slower than system, so payload wont change 
    assign wr_data = payload;
    assign alu_fun = payload [FUN_WIDTH-1:0];

    // fifo output data logic
    // logic fifo_data_sel;     // 0: reg file rd data, 1: alu out
    // assign f_data_in = fifo_data_sel ? alu_out [DATA_WIDTH-1:0] : rd_data;

    // fifo output data logic
    typedef enum logic [1:0] { 
        REG_RD_DATA,
        ALU_OUT_0,
        ALU_OUT_1
    } fifo_data_sel_e;

    fifo_data_sel_e fifo_data_sel;

    always_comb begin : f_data_in_logic
        case (fifo_data_sel)
            REG_RD_DATA: begin
                f_data_in = rd_data;
            end
            ALU_OUT_0: begin
                f_data_in = alu_out [DATA_WIDTH-1:0];
            end
            ALU_OUT_1: begin
                f_data_in = alu_out [OUT_WIDTH-1:DATA_WIDTH];
            end
            default: begin
                f_data_in = rd_data;
            end
        endcase
    end

    // fsm
    always_ff @( posedge clk or negedge rst_n ) begin : current_state_logic
        if (!rst_n) begin
            current_state <= IDLE;
        end
        else begin
            current_state <= next_state;
        end
    end

    always_comb begin : next_state_logic
        next_state = IDLE;
        case (current_state)
            IDLE: begin
                if (payload_valid) begin
                    case (payload)
                        'hAA: next_state = WR_ADDR;
                        'hBB: next_state = RD_ADDR;
                        'hCC: next_state = ALU_OP_A;
                        'hDD: next_state = ALU_FUN;
                        default: next_state = IDLE;
                    endcase
                end
                else begin
                    next_state = IDLE;
                end
            end
            // write command states
            WR_ADDR: begin
                next_state = payload_valid ? WR_DATA : WR_ADDR;
            end
            WR_DATA: begin
                next_state = payload_valid ? IDLE : WR_DATA;
            end
            // read command states
            RD_ADDR: begin
                next_state = payload_valid ? RD_WAIT : RD_ADDR;
            end
            RD_WAIT: begin
                next_state = (rd_data_valid & ~full_flag) ? IDLE : RD_WAIT;
                // system should wait until fifo isn't full,
                // so we keep regfile rd_en in rd wait state, so rd_data_valid is kept asserted,
                // while waiting until full_flag deasserts
                // as if rd_data_valid asserted for one cycle while full flag is asserted, 
                // it will stuck in this state
            end
            // alu oper states
            ALU_OP_A: begin
                next_state = payload_valid ? ALU_OP_B : ALU_OP_A;
            end
            ALU_OP_B: begin
                next_state = payload_valid ? ALU_FUN : ALU_OP_B;
            end
            ALU_FUN: begin
                next_state = payload_valid ? ALU_WAIT : ALU_FUN;
            end
            ALU_WAIT: begin
                next_state = (alu_out_valid & ~full_flag) ? ALU_OUT : ALU_WAIT;
                // system should wait until fifo isn't full,
                // so we keep regfile alu_en in alu wait state, so alu_out_valid is kept asserted,
                // while waiting until full_flag deasserts
                // as if alu_out_valid asserted for one cycle while full flag is asserted, 
                // it will stuck in this state
            end
            ALU_OUT: begin
                next_state = (alu_out_valid & ~full_flag) ? IDLE : ALU_OUT;
                // system should wait until fifo isn't full,
                // so we keep regfile alu_en in alu wait state, so alu_out_valid is kept asserted,
                // while waiting until full_flag deasserts
                // as if alu_out_valid asserted for one cycle while full flag is asserted, 
                // it will stuck in this state
            end
            default: next_state = IDLE;
        endcase
    end

    // outputs types:
    /*
        fsm mealy: {
                    wr_en,
                    wr_inc
                }
        fsm moore: {
                    register_addr, addr_sel (addr),
                    rd_en,
                    clk_en,
                    alu_en,
                     (f_data_in)
                } 
        data:      {
                    wr_data,
                    alu_fun 
                }
        always asserted: clk_div_en
    */

    // output logic
    assign clk_div_en = 'b1;

    always_comb begin : mealy_output_logic
        wr_en = 'b0;
        wr_inc = 'b0;
        case (current_state)
            WR_DATA, ALU_OP_A, ALU_OP_B: begin
                wr_en = payload_valid;
            end
            RD_WAIT: begin
                wr_inc = (rd_data_valid & ~full_flag);
            end 
            ALU_WAIT, ALU_OUT: begin
                wr_inc = (alu_out_valid & ~full_flag);
            end
            default: begin
                wr_en = 'b0;
                wr_inc = 'b0;
            end
        endcase
    end

    always_comb begin : moore_output_logic
        register_addr = 'b0;
        addr_sel = PAYLOAD_ADDR;
        rd_en = 'b0;
        clk_en = 'b0;
        alu_en = 'b0;
        fifo_data_sel = REG_RD_DATA;
        case (current_state)
            // regfile commands states
            WR_ADDR, RD_ADDR: begin
                register_addr = 'b1;    // so it will be stable for read command before going to RD_WAIT state
                addr_sel = PAYLOAD_ADDR;
            end
            WR_DATA: begin
                addr_sel = PAYLOAD_ADDR;
            end
            RD_WAIT: begin
                addr_sel = PAYLOAD_ADDR;
                rd_en = 'b1;
                fifo_data_sel = REG_RD_DATA;
            end
            // alu commands states
            ALU_OP_A: begin
                addr_sel = OP_A_ADDR;
            end
            ALU_OP_B: begin
                addr_sel = OP_B_ADDR;
            end
            ALU_FUN: begin
                clk_en = 'b1;
            end
            ALU_WAIT: begin
                clk_en = 'b1;
                alu_en = 'b1;
                fifo_data_sel = ALU_OUT_0;
            end
            ALU_OUT: begin
                clk_en = 'b1;
                alu_en = 'b1;
                fifo_data_sel = ALU_OUT_1;
            end
            default: begin
                register_addr = 'b0;
                rd_en = 'b0;
                clk_en = 'b0;
                alu_en = 'b0;
                fifo_data_sel = REG_RD_DATA;
            end
        endcase
    end
endmodule
