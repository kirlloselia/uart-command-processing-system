module rx_controller (
    input logic clk, rst_n,
    input logic rx_in,        // serial input line
    input logic par_en,       // parity configuration
    input logic par_typ,
    input logic [3:0] bit_cnt,      // frame bit index
    input logic strt_glitch,  // start check status
    input logic par_err,      // parity check status
    input logic stp_err,      // stop check status
    input logic bit_valid,    // bit sampled status
    // ctrl signals
    output logic cnt_en,       // counter control       (moore)
    output logic dat_samp_en,  // data sampling enable  (moore)
    output logic strt_chk_en,  // start check enable    (moore)
    output logic par_pdata_en, // p_data input enable   (moore)
    output logic par_chk_en,   // parity check enable   (mealy)
    output logic stp_chk_en,   // stop check enable     (mealy)
    output logic deser_en,     // deserializer enable   (mealy)
    output logic data_valid,   // rx data valid strobe  (mealy)
    // config signals
    output logic par_typ_latched
);

    typedef enum logic [2:0] {
        IDLE,
        START,
        DATA,
        PAR,
        STOP,
        CHECK
    } state_e;

    state_e current_state, next_state;

    logic par_en_latched;

    // config latch when we sample start bit and find no glitch
    logic latch_config;
    assign latch_config = (current_state == START) & bit_valid & ~strt_glitch;
    always_ff @( posedge clk or negedge rst_n ) begin : config_latch_logic
        if (!rst_n) begin
            par_en_latched <= 'b0;
            par_typ_latched <= 'b0;
        end
        else if (latch_config) begin
            par_en_latched <= par_en;
            par_typ_latched <= par_typ;
        end
    end
    
    always_ff @( posedge clk or negedge rst_n ) begin : current_state_logic
        if (!rst_n) begin
            current_state <= IDLE;
        end
        else begin
            current_state <= next_state;
        end
    end

    logic data_valid_c;
    
    always_ff @( posedge clk or negedge rst_n ) begin : blockName
        if (!rst_n) begin
            data_valid <= 'b0;
        end
        else begin
            data_valid <= data_valid_c;
        end
    end


    always_comb begin : moore_output_logic
        cnt_en = 'b0;       
        dat_samp_en = 'b0; 
        strt_chk_en = 'b0; 
        par_pdata_en = 'b0;
        case (current_state)
            IDLE, CHECK: begin
                cnt_en = 'b0;       
                dat_samp_en = 'b0; 
                strt_chk_en = 'b0; 
                par_pdata_en = 'b0;
            end

            START: begin
                cnt_en = 'b1;       
                dat_samp_en = 'b1; 
                strt_chk_en = 'b1; 
            end

            DATA, STOP: begin
                cnt_en = 'b1;       
                dat_samp_en = 'b1; 
            end

            PAR: begin
                cnt_en = 'b1;       
                dat_samp_en = 'b1;
                par_pdata_en = 'b1;
            end

            // STOP: begin
            //     cnt_en = 'b1;       
            //     dat_samp_en = 'b1;
            // end

            default: begin
                cnt_en = 'b0;       
                dat_samp_en = 'b0; 
                strt_chk_en = 'b0; 
                par_pdata_en = 'b0;
            end
        endcase
    end

    always_comb begin : mealy_output_logic
        par_chk_en = 'b0;
        stp_chk_en = 'b0;
        deser_en = 'b0;
        data_valid_c = 'b0;
        // strt_chk_en = 'b0;  // this should be mealy output,
        // as it will depend on bit valid so it can get the samples bit
        // update this is wrong as it wont update state unless bit_valid is asserted
        case (current_state)
            IDLE: begin      // disable all ctrl signals
                par_chk_en = 'b0;
                stp_chk_en = 'b0;
                deser_en = 'b0;
                data_valid_c = 'b0;
            end

            // START: begin    // ctrl strt_chk_en
            //     if (bit_cnt != 'd1 & bit_valid) begin
            //        strt_chk_en = 'b1;
            //     end
            //     else begin
            //         strt_chk_en = 'b0;
            //     end
                
            // end

            DATA: begin     // ctrl deser_en
                if (bit_cnt != 'd9 & bit_valid) begin
                   deser_en = 'b1;
                end
                else begin
                    deser_en = 'b0;
                end
            end

            PAR: begin      // ctrl par_chk_en
                if (bit_cnt != 'd10 & bit_valid) begin
                    par_chk_en = 'b1;
                end
                else begin
                    par_chk_en = 'b0;
                end
            end

            STOP: begin     // ctrl stp_chk_en
                if (bit_valid) begin
                    stp_chk_en = 'b1;
                end
                else begin
                    stp_chk_en = 'b0;
                end
            end

            CHECK: begin    // ctrl data_valid
                if (par_err | stp_err) begin
                    data_valid_c = 'b0;
                end
                else begin
                    data_valid_c = 'b1;
                end
            end

            default: begin
                par_chk_en = 'b0;
                stp_chk_en = 'b0;
                deser_en = 'b0;
                data_valid_c = 'b0;
//                strt_chk_en = 'b0;
            end
        endcase
    end

    always_comb begin : next_state_logic
        next_state = IDLE;
        case (current_state)
            IDLE: begin
                next_state = rx_in ? IDLE : START;
            end

            START: begin
                if (bit_valid & strt_glitch) begin
                    next_state = IDLE;
                end
                else if (bit_cnt == 'b0) begin
                    next_state = START;
                end
                else if ((bit_cnt == 'b1) & ~strt_glitch) begin
                    next_state = DATA;
                end
            end

            DATA: begin
                if (bit_cnt == 'd9) begin
                    if (par_en_latched) begin
                        next_state = PAR;
                    end
                    else begin
                        next_state = STOP;
                    end
                end
                else begin
                    next_state = DATA;
                end
            end

            PAR: begin
                if (bit_cnt == 'd10) begin
                    next_state = STOP;
                end
                else begin
                    next_state = PAR;
                end
            end

            STOP: begin
                if (bit_valid) begin
                    next_state = CHECK;
                end
                else begin
                    next_state = STOP;
                end
            end

            CHECK: begin
                next_state = IDLE; 
            end

            default: begin
                next_state = IDLE;
            end
        endcase
    end
    

endmodule


// rx_in start detection is level sensitive not edge sensetive,
// to avoid undetecting a start of a frame incase of misalligned frames.
// example when sampling the stop bit it was found zero, which may be the start of new frame (misalligned frames)
// no we cant detect the falling of rx_in if we used edge detection technique



// the mealy outputs depend on an input which is when is the bit sampled (bit valid)