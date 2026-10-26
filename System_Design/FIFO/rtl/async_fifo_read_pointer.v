//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/21/2025 08:59:45 PM
// Design Name: 
// Module Name: async_fifo_read_pointer
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
// and doesn't introduce a latency of 1 cycle between r_addr and r_ptr_gray,
// so we can use registered r_ptr_gray for empty_flag calculation
// also this implementation doesn't back pressure on write domain,
// but it increases comb delay
module async_fifo_read_pointer #(
    parameter DEPTH = 64
)(
    input r_rst,
    input rclk,
    input r_en,
    input [$clog2(DEPTH):0] w_ptr_sync,
    output reg [$clog2(DEPTH):0] r_addr,
    output reg [$clog2(DEPTH):0] r_ptr_gray,
    output empty_flag
    );

    localparam ADDR_DEPTH = $clog2(DEPTH); // 3 Bits

    reg [$clog2(DEPTH):0] r_addr_c;      // next value of r_ptr_gray and r_addr
    wire [$clog2(DEPTH):0] r_ptr_gray_c;

    always @(*) begin
        if (r_en & ~empty_flag) begin
            if (r_addr == DEPTH - 1) begin
                r_addr_c[ADDR_DEPTH-1:0] = 0;
                r_addr_c[ADDR_DEPTH] = ~r_addr[ADDR_DEPTH];
            end
            else begin
                r_addr_c = r_addr + 1'b1;
            end
        end
        else begin
            r_addr_c = r_addr;
        end
    end

    // reg [ADDR_DEPTH:0] w_addr_int;
    // assign w_addr = w_addr_int;
    b2g #(.WIDTH(ADDR_DEPTH)) b2g_r (.B(r_addr_c[ADDR_DEPTH-1:0]), .G(r_ptr_gray_c[ADDR_DEPTH-1:0]));
    assign r_ptr_gray_c[ADDR_DEPTH] = r_addr_c[ADDR_DEPTH];

    always @(posedge rclk, negedge r_rst) begin
        if(!r_rst) begin
            r_addr <= 0;
            r_ptr_gray <= 0;
        end
        else begin
            r_addr <= r_addr_c;
            r_ptr_gray <= r_ptr_gray_c;
        end
    end

    assign empty_flag = (r_ptr_gray == w_ptr_sync); 
    // using seq r_ptr_gray for empty flag calc will add additional tx cycle delay,
    // but no diff in funct. 

    // assign empty_flag = (r_ptr_gray_c == w_ptr_sync);
    // this creates comb loop with tx controller busy signal

endmodule








// this implementation solves glitchy comb loop that was fan in to sync,
// but it introduces a latency of 1 cycle between r_addr and r_ptr_gray, 
// which can be a problem by reading invalid data if empty flag is calculated with registered r_ptr_gray, 
// so we need to use r_ptr_gray_c for empty_flag calculation
// also this implementation back pressures on write domain as it sends the registered r_ptr_gray to write domain, which is 1 cycle delayed from r_addr,
// so it can cause write domain to think fifo is full when it actually is not full and since rd domain is much slower, with respect to wr domain,
// it will take time to update the r_ptr_sync.
// verdict not recommended implemenation
/*
module async_fifo_read_pointer #(
    parameter DEPTH = 64
)(
    input r_rst,
    input rclk,
    input r_en,
    input [$clog2(DEPTH):0] w_ptr_sync,
    output reg [$clog2(DEPTH):0] r_addr,
    output [$clog2(DEPTH):0] r_ptr_gray,
    output empty_flag
    );

    localparam ADDR_DEPTH = $clog2(DEPTH); // 3 Bits

    wire [$clog2(DEPTH):0] r_ptr_gray_c;


    // reg [ADDR_DEPTH:0] w_addr_int;
    // assign w_addr = w_addr_int;
    b2g #(.WIDTH(ADDR_DEPTH)) b2g_r (.B(r_addr[ADDR_DEPTH-1:0]), .G(r_ptr_gray_c[ADDR_DEPTH-1:0]));
    assign r_ptr_gray_c[ADDR_DEPTH] = r_addr[ADDR_DEPTH];

    always @(posedge rclk, negedge r_rst) begin
        if(!r_rst) begin
            r_addr <= 0;
        end
        else begin
            if (r_en & ~empty_flag) begin
                if (r_addr == DEPTH - 1) begin
                    r_addr[ADDR_DEPTH-1:0] <= 0;
                    r_addr[ADDR_DEPTH] <= ~r_addr[ADDR_DEPTH];
                end
                else begin
                    r_addr <= r_addr + 1'b1;
                end
            end
        end
    end

    always @( posedge rclk, negedge r_rst) begin
        if(!r_rst) begin
            r_ptr_gray <= 0;
        end
        else begin
            r_ptr_gray <= r_ptr_gray_c;
        end
    end

    assign empty_flag = (r_ptr_gray_c == w_ptr_sync);

endmodule

*/






// old implementation: problem has glitchy comb loop that was fan in to sync, increase metastabilty,
// incorrect fifo behaviour if wr domain sampled glitchy r_ptr_gray, as it will introduce data loss,
// as a glitch can increment the r_ptr_gray by more than 1
/*
module async_fifo_read_pointer #(
    parameter DEPTH = 64
)(
    input r_rst,
    input rclk,
    input r_en,
    input [$clog2(DEPTH):0] w_ptr_sync,
    output reg [$clog2(DEPTH):0] r_addr,
    output [$clog2(DEPTH):0] r_ptr_gray,
    output empty_flag
    );

    localparam ADDR_DEPTH = $clog2(DEPTH); // 3 Bits


    // reg [ADDR_DEPTH:0] w_addr_int;
    // assign w_addr = w_addr_int;
    b2g #(.WIDTH(ADDR_DEPTH)) b2g_r (.B(r_addr[ADDR_DEPTH-1:0]), .G(r_ptr_gray[ADDR_DEPTH-1:0]));
    assign r_ptr_gray[ADDR_DEPTH] = r_addr[ADDR_DEPTH];

    always @(posedge rclk, negedge r_rst) begin
        if(!r_rst) begin
            r_addr <= 0;
        end
        else begin
            if (r_en & ~empty_flag) begin
                if (r_addr == DEPTH - 1) begin
                    r_addr[ADDR_DEPTH-1:0] <= 0;
                    r_addr[ADDR_DEPTH] <= ~r_addr[ADDR_DEPTH];
                end
                else begin
                    r_addr <= r_addr + 1'b1;
                end
            end
        end
    end

    assign empty_flag = (r_ptr_gray == w_ptr_sync);

endmodule
*/
