module bit_sync #(
    parameter NUM_STAGES = 2,
    parameter BUS_WIDTH = 1
) (
    input logic clk, rst_n,
    input logic [BUS_WIDTH-1:0] async,          // data bus
    output logic [BUS_WIDTH-1:0] sync
);
    // genvar i;
    // generate
    //     for (i = 0; i < NUM_STAGES; i++) begin
            
    //     end
    // endgenerate
    // logic [NUM_STAGES-1:0] ff;
    // assign sync = ff [0];
    // always_ff @( posedge clk, negedge rst_n ) begin : sync_logic
    //     if (!rst_n) begin
    //         ff <= 'b0;
    //     end
    //     else begin
    //         ff <= {async, ff [NUM_STAGES-1:1]};
    //     end
    // end
    
    logic [NUM_STAGES-1:0] ff;
    assign sync = ff [NUM_STAGES-1];
    always_ff @( posedge clk, negedge rst_n ) begin : sync_logic
        if (!rst_n) begin
            ff <= 'b0;
        end
        else begin
            ff <= {ff [NUM_STAGES-2:0], async};
        end
    end
endmodule
