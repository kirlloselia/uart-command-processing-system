//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/21/2025 08:59:45 PM
// Design Name: 
// Module Name: async_fifo_write_pointer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// this implementation solves glitchy comb loop that was fan in to sync,
// and doesn't introduce a latency of 1 cycle between w_addr and w_ptr_gray,
// so we can use registered w_ptr_gray for full_flag calculation
// also this implementation doesn't back pressure on read domain,
// but it increases comb delay
module async_fifo_write_pointer #(
    parameter DEPTH = 64
)(
    input w_rst,
    input wclk,
    input w_en,
    input [$clog2(DEPTH):0] r_ptr_sync,
    output reg [$clog2(DEPTH):0] w_addr,
    output reg [$clog2(DEPTH):0] w_ptr_gray,
    output full_flag
    );

    localparam ADDR_DEPTH = $clog2(DEPTH); // 6 Bits

    reg [$clog2(DEPTH):0] w_addr_c;      // next value of w_ptr_gray and w_addr
    wire [$clog2(DEPTH):0] w_ptr_gray_c;
    always @(*) begin
        if (w_en & ~full_flag) begin
            if (w_addr == DEPTH - 1) begin
                w_addr_c[ADDR_DEPTH-1:0] = 0;
                w_addr_c[ADDR_DEPTH] = ~w_addr[ADDR_DEPTH];
            end
            else begin
                w_addr_c = w_addr + 1'b1;
            end
        end
        else begin
            w_addr_c = w_addr;
        end
    end

    // reg [ADDR_DEPTH:0] w_addr_int;
    // assign w_addr = w_addr_int;
    b2g #(.WIDTH(ADDR_DEPTH)) b2g_w (.B(w_addr_c[ADDR_DEPTH-1:0]), .G(w_ptr_gray_c[ADDR_DEPTH-1:0]));
    assign w_ptr_gray_c[ADDR_DEPTH] = w_addr_c[ADDR_DEPTH];

    always @(posedge wclk, negedge w_rst) begin
        if(!w_rst) begin
            w_addr <= 0;
            w_ptr_gray <= 0;
        end
        else begin
            w_addr <= w_addr_c;
            w_ptr_gray <= w_ptr_gray_c;
        end
    end

    
    // assign full_flag = (w_ptr_gray[ADDR_DEPTH:ADDR_DEPTH-1] != r_ptr_sync[ADDR_DEPTH:ADDR_DEPTH-1]) 
    //                     && (w_ptr_gray[ADDR_DEPTH-2:0] == r_ptr_sync[ADDR_DEPTH-2:0]);
    // assign full_flag = (w_ptr_gray[ADDR_DEPTH] != r_ptr_sync[ADDR_DEPTH]) 
    //                     && (w_ptr_gray[ADDR_DEPTH-1:0] == r_ptr_sync[ADDR_DEPTH-1:0]);
    // using seq w_ptr_gray for empty flag calc will add additional syc cycle delay,
    // but no diff in funct.
    assign full_flag =  (w_ptr_gray[ADDR_DEPTH] != r_ptr_sync[ADDR_DEPTH]) &&
                        (w_ptr_gray[ADDR_DEPTH-1] != r_ptr_sync[ADDR_DEPTH-1]) &&
                        (w_ptr_gray[ADDR_DEPTH-2:0] == r_ptr_sync[ADDR_DEPTH-2:0]);
    // only works for depth = 8, thus 4 bits for the ptr and this is the condition of full flag.
    

    // assign full_flag =  (w_ptr_gray_c[ADDR_DEPTH] != r_ptr_sync[ADDR_DEPTH]) &&
    //                     (w_ptr_gray_c[ADDR_DEPTH-1] != r_ptr_sync[ADDR_DEPTH-1]) &&
    //                     (w_ptr_gray_c[ADDR_DEPTH-2:0] == r_ptr_sync[ADDR_DEPTH-2:0]);
    


endmodule

// old implementation: problem has glitchy comb loop that was fan in to sync, increase metastabilty,
// incorrect fifo behaviour if rd domain sampled glitchy w_ptr_gray, as it will introduce reading invalid data in rd domain, 
// as if w_ptr_gray glitched and incremented by more than 1, then rd domain will think that there is more data in fifo than it actually is,
// and will read invalid data
/*
module async_fifo_write_pointer #(
    parameter DEPTH = 64
)(
    input w_rst,
    input wclk,
    input w_en,
    input [$clog2(DEPTH):0] r_ptr_sync,
    output reg [$clog2(DEPTH):0] w_addr,
    output [$clog2(DEPTH):0] w_ptr_gray,
    output full_flag
    );

    localparam ADDR_DEPTH = $clog2(DEPTH); // 6 Bits


    // reg [ADDR_DEPTH:0] w_addr_int;
    // assign w_addr = w_addr_int;
    b2g #(.WIDTH(ADDR_DEPTH)) b2g_w (.B(w_addr[ADDR_DEPTH-1:0]), .G(w_ptr_gray[ADDR_DEPTH-1:0]));
    assign w_ptr_gray[ADDR_DEPTH] = w_addr[ADDR_DEPTH];

    always @(posedge wclk, negedge w_rst) begin
        if(!w_rst) begin
            w_addr <= 0;
        end
        else begin
            if (w_en & ~full_flag) begin
                if (w_addr == DEPTH - 1) begin
                    w_addr[ADDR_DEPTH-1:0] <= 0;
                    w_addr[ADDR_DEPTH] <= ~w_addr[ADDR_DEPTH];
                end
                else begin
                    w_addr <= w_addr + 1'b1;
                end
            end
        end
    end

    // assign full_flag = (w_ptr_gray[ADDR_DEPTH:ADDR_DEPTH-1] != r_ptr_sync[ADDR_DEPTH:ADDR_DEPTH-1]) 
    //                     && (w_ptr_gray[ADDR_DEPTH-2:0] == r_ptr_sync[ADDR_DEPTH-2:0]);
    // assign full_flag = (w_ptr_gray[ADDR_DEPTH] != r_ptr_sync[ADDR_DEPTH]) 
    //                     && (w_ptr_gray[ADDR_DEPTH-1:0] == r_ptr_sync[ADDR_DEPTH-1:0]);
    assign full_flag =  (w_ptr_gray[ADDR_DEPTH] != r_ptr_sync[ADDR_DEPTH]) &&
                        (w_ptr_gray[ADDR_DEPTH-1] != r_ptr_sync[ADDR_DEPTH-1]) &&
                        (w_ptr_gray[ADDR_DEPTH-2:0] == r_ptr_sync[ADDR_DEPTH-2:0]);
    // only works for depth = 8, thus 4 bits for the ptr and this is the condition of full flag.


endmodule
*/

// 000 
// 001
// 010

// 0 1 3 2
// 4 5 7 6
// 12 12 15 14
// 8 9 11 10

// 8 --- 1100
// 0 --- 0000
