module data_sync #(
    parameter NUM_STAGES = 2,
    parameter BUS_WIDTH = 8
) (
    input logic clk, rst_n,
    input logic bus_enable,                     // ctrl signals 
    input logic [BUS_WIDTH-1:0] unsync_bus,     // data bus
    output logic [BUS_WIDTH-1:0] sync_bus,
    output logic enable_pulse                   // ctrl signal
);

    logic bus_enable_sync, bus_enable_sync_pulse;
    
    localparam BUS_WIDTH_SYNC = 1;
    bit_sync
    #(  .NUM_STAGES(NUM_STAGES),
        .BUS_WIDTH(BUS_WIDTH_SYNC)
    )
    bit_sync_inst 
    (
        .clk (clk),
        .rst_n (rst_n),
        .async (bus_enable),
        .sync (bus_enable_sync)
    );

    // to generate a pulse out of the sync enable signal,
    // so if it got asserted more than one cylce a pulse is only generated
    pulse_gen pulse_gen_inst        
    (
        .clk (clk),
        .rst_n (rst_n),
        .lvl_sig (bus_enable_sync),
        .pulse_sig (bus_enable_sync_pulse)
    );

    always_ff @( posedge clk or negedge rst_n ) begin : output_logic
        if (!rst_n) begin
            sync_bus <= 'b0;
            enable_pulse <= 'b0;
        end
        else begin
            enable_pulse <= bus_enable_sync_pulse;
            sync_bus <= bus_enable_sync_pulse ? unsync_bus : sync_bus;
        end
    end

endmodule
