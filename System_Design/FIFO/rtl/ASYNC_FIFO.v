//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/21/2025 10:28:40 PM
// Design Name: 
// Module Name: ASYNC_FIFO
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

// Reading frequency: 40 MHz
// Writing frequency: 100 MHz
// Writing Data Bytes: 9 Bytes
// thus required to store 44 bits into fifo, thus depth is 64.
// ((1/100)*9*8) / (1/40) = 28.8 bits, 9*8 - 28.8 = 43.2,  thus depth is 64.
module ASYNC_FIFO #(
    parameter DATA_WIDTH = 8, parameter DEPTH = 8
)(
    input wclk,
    input rclk,
    input w_rst,
    input r_rst,
    input wr_inc,
    input rd_inc,
    input [DATA_WIDTH-1:0] f_data_in,
    output empty_flag,
    output full_flag,
    output [DATA_WIDTH-1:0] f_data_out
);
    localparam ADDR_DEPTH = $clog2(DEPTH); // 7 Bits

    wire [ADDR_DEPTH:0] w_addr, r_addr, r_ptr_sync, r_ptr_gray, w_ptr_sync, w_ptr_gray;
    
    // FIFO MEM INST
    asyc_fifo_mem #(
        .DATA_WIDTH (DATA_WIDTH),  
        .DEPTH      (DEPTH)
    ) u_asyc_fifo_mem (
        .w_rst      (w_rst),    // Write-side asynchronous reset
        // .r_rst      (r_rst),    // Read-side asynchronous reset
        .wclk       (wclk),     // Write clock
        // .rclk       (rclk),     // Read clock
        .data_in    (f_data_in),  // Data input to the FIFO
        .w_addr     (w_addr),   // Write address pointer
        .r_addr     (r_addr),   // Read address pointer
        .w_en       (wr_inc&~full_flag),     // Write enable signal
        // .r_en       (rd_inc&~empty_flag),     // Read enable signal
        .data_out   (f_data_out)  // Data output from the FIFO
    );

    // FIFO WRITE POINTER INST
    async_fifo_write_pointer #(
        .DEPTH      (DEPTH)
    ) u_async_fifo_write_pointer (
        .w_rst      (w_rst),        // Write-side asynchronous reset
        .wclk       (wclk),         // Write clock
        .w_en       (wr_inc),         // Write enable signal
        .r_ptr_sync (r_ptr_sync),   // Synchronized read pointer from read clock domain
        .w_addr     (w_addr),       // Output write address pointer
        .w_ptr_gray (w_ptr_gray),   // Output gray-coded write pointer
        .full_flag  (full_flag)     // Output full flag
    );

    // FIFO READ POINTER INST
    async_fifo_read_pointer #(
        .DEPTH      (DEPTH)
    ) u_async_fifo_read_pointer (
        .r_rst      (r_rst),        // Read-side asynchronous reset
        .rclk       (rclk),         // Read clock
        .r_en       (rd_inc),         // Read enable signal
        .w_ptr_sync (w_ptr_sync),   // Synchronized write pointer from write clock domain
        .r_addr     (r_addr),       // Output read address pointer
        .r_ptr_gray (r_ptr_gray),   // Output gray-coded read pointer
        .empty_flag (empty_flag)    // Output empty flag
    );

    // WRITE POINTER SYNCHRONIZER 2FF INST (READ DOMAIN)

    synchronizer_2ff #(
        .WIDTH      (ADDR_DEPTH+1)
    ) u_w_synchronizer_2ff (
        .clk        (rclk),      // Clock input for synchronization
        .reset      (r_rst),    // Asynchronous reset
        .in         (w_ptr_gray),       // Input data to be synchronized
        .out        (w_ptr_sync)       // Synchronized output data
    );

    // READ POINTER SYNCHRONIZER 2FF INST (WRITE DOMAIN)
    synchronizer_2ff #(
        .WIDTH      (ADDR_DEPTH+1)
    ) u_r_synchronizer_2ff (
        .clk        (wclk),      // Clock input for synchronization
        .reset      (w_rst),    // Asynchronous reset
        .in         (r_ptr_gray),       // Input data to be synchronized
        .out        (r_ptr_sync)       // Synchronized output data
    );

/*
    // WRITE POINTER SYNCHRONIZER 2FF INST (SYNC READ DOMAIN)
    bit_sync
    #(   .BUS_WIDTH(ADDR_DEPTH+1)
    )
    r_bit_sync_inst 
    (
        .clk (rclk),
        .rst_n (r_rst),
        .async (w_ptr_gray),
        .sync (w_ptr_sync)
    );

    // READ POINTER SYNCHRONIZER 2FF INST (SYNC WRITE DOMAIN)
    bit_sync
    #(   .BUS_WIDTH(ADDR_DEPTH+1)
    )
    w_bit_sync_inst 
    (
        .clk (wclk),
        .rst_n (w_rst),
        .async (r_ptr_gray),
        .sync (r_ptr_sync)
    );
*/
endmodule


