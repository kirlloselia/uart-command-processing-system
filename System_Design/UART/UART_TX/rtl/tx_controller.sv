// fsm controller of uart tx implemented by moore fsm
module tx_controller (
    input logic clk, rst_n,
    input logic data_valid, par_en,     // input ctrl signals
    input logic ser_done,               // ser status signal
    output logic [1:0] mux_sel,         // output ctrl signal
    output logic ser_en, latch_data,        // output ctrl signal
    output logic busy                   // output status flag
);
    typedef enum logic [2:0] {
        IDLE,
        START,
        SHIFT,
        PARITY,
        STOP
    } state_e;

    typedef enum logic [1:0] {
        START_BIT,
        STOP_BIT,
        SER_BIT,
        PAR_BIT
    } mux_sel_e;

    state_e current_state, next_state;

    logic par_en_latched;
    
    always_ff @( posedge clk or negedge rst_n ) begin : current_state_logic
        if (!rst_n) begin
            current_state <= IDLE;
        end
        else begin
            current_state <= next_state;
        end
    end

    always_comb begin : output_logic
        busy = 'b1;
        ser_en = 'b0;
        mux_sel = STOP_BIT;
        // latch_data = 'b0;
        case (current_state)
            IDLE: begin
                busy = 'b0;
            end
            START: begin
                // latch_data = 'b1;
                mux_sel = START_BIT;
            end
            SHIFT: begin
                ser_en = 'b1;
                mux_sel = SER_BIT;
            end
            PARITY: begin
                mux_sel = PAR_BIT;
            end
            STOP: begin
                mux_sel = STOP_BIT;
            end
            default: begin
                busy = 'b0;
                ser_en = 'b0;
                mux_sel = STOP_BIT;
            end
        endcase
    end

    always_comb begin : next_state_logic
        case (current_state)
            IDLE: begin
                next_state = data_valid ? START : IDLE;
            end
            START: begin
                next_state = SHIFT;
            end
            SHIFT: begin
                if (!ser_done) begin
                    next_state = SHIFT;
                end
                else begin
                    next_state = par_en_latched ? PARITY : STOP;
                end
            end
            PARITY: begin
                next_state = STOP;
            end
            STOP: begin
                // next_state = data_valid ? START : IDLE; // remove back to back txn support for the system to work
                next_state = IDLE;
            end
            default: begin
                next_state = IDLE;
            end 
        endcase
    end

    // to prevent latching data path or config after data_valid assertion,
    // serializer, parity_calc should latch on data,
    // only if busy deasserted and data_valid asserted combinationally,
    // otherwise dont latch any data
    // assign latch_data = (next_state == START); // not good as it may increase fanout of this comb signal as it would be connected to multiple flipflops
    assign latch_data = data_valid & ((current_state == IDLE) | (current_state == STOP));   // data valid is only sampled in those two states only

    always_ff @( posedge clk or negedge rst_n ) begin : blockName
        if (!rst_n) begin
            par_en_latched <= 'b0;
        end
        else if (latch_data) begin
            par_en_latched <= par_en;
        end
    end

endmodule