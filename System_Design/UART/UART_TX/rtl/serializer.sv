// parallel in serial out shift register with enable ctrl signals 
module serializer #(
    parameter MAX_WIDTH = 8
) (
    input logic clk, rst_n,
    input logic [MAX_WIDTH-1:0] p_data, // parallel data
    input logic ser_en, latch_data,        // ctrl signal
    output logic ser_done,              // payload shifting done flag 
    output logic ser_data               // serial payload data bit
);
    // data register
    logic [MAX_WIDTH-1:0] data;

    // counter
    logic en, high, low;
    counter counter_inst (.*);
    assign ser_done = high;
    assign en = ser_en;

    // serial data supports lsb mode only 
    assign ser_data = data[0];
    
    always_ff @( posedge clk or negedge rst_n ) begin : piso_logic
        if (!rst_n) begin
            data <= 'b0;
        end
        else begin
            if (ser_en & ~high) begin
                data <= {1'b0, data[MAX_WIDTH-1:1]};  // shift right by one bit
            end
            else if (latch_data) begin
                data <= p_data;                     // parallel input
            end
        end
    end
endmodule