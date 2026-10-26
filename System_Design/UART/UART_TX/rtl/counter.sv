module counter #(
    parameter WIDTH = 4
) (
    input logic clk, rst_n,     
    input logic en,             // ctrl signal
    output logic high, low      // output flags
);
    logic [WIDTH-1:0] c;

    assign low = (c == 'b0);
    assign high = &c[WIDTH-2:0]; // c = 7 not 8
    // since this is a sync high flag signal, thus it should be at 7, so it asserts at the 7th cycle from ser_en as it will be sampled by serializer next cycle 
    // so if it was 8 then the high flag would be asserted at the 8th cycle from ser_en totataling in 9 shift cycles
    //, which is wrong

    always_ff @( posedge clk or negedge rst_n ) begin : blockName
        if (!rst_n) begin
            c <= 'b0;
        end
        else if (en & ~high) begin
            c <= c + 'b1; 
        end
        else begin
            c <= 'b0;
        end
    end
endmodule