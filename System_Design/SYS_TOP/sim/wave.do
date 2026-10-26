onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group INTF /tb/intf/rst_n
add wave -noupdate -expand -group INTF /tb/intf/rx_in
add wave -noupdate -expand -group INTF /tb/intf/tx_out
add wave -noupdate -expand -group INTF /tb/intf/parity_error
add wave -noupdate -expand -group INTF /tb/intf/framing_error
add wave -noupdate -expand -group TB /tb/uart_clk
add wave -noupdate -expand -group TB /tb/ref_clk
add wave -noupdate -expand -group TB /tb/tb_tx_clk
add wave -noupdate -expand -group TB /tb/tb_rx_clk
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/DATA_WIDTH
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/clk
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/rst_n
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/p_data
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/data_valid
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/par_en
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/par_typ
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/tx_out
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/busy
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/latch_data
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/ser_en
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/ser_data
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/ser_done
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/par_bit
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/mux_sel
add wave -noupdate -expand -group UART_TX /tb/genblk1/DUT/uart_inst/U0_UART_TX/mux_in
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/wclk
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/rclk
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/w_rst
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/r_rst
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/wr_inc
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/rd_inc
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/f_data_in
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/empty_flag
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/full_flag
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/f_data_out
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/w_addr
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/r_addr
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/r_ptr_sync
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/r_ptr_gray
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/w_ptr_sync
add wave -noupdate -expand -group FIFO /tb/genblk1/DUT/ASYNC_FIFO_inst/w_ptr_gray
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {500849327 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {1580845505 ps} {1739575793 ps}
