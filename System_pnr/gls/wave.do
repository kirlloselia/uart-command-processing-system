onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group DUT /tb/dft_sel/DUT/REF_CLK
add wave -noupdate -expand -group DUT /tb/dft_sel/DUT/UART_CLK
add wave -noupdate -expand -group DUT /tb/dft_sel/DUT/RST_N
add wave -noupdate -expand -group DUT /tb/dft_sel/DUT/UART_RX_IN
add wave -noupdate -expand -group DUT /tb/dft_sel/DUT/UART_TX_OUT
add wave -noupdate -expand -group DUT /tb/dft_sel/DUT/parity_error
add wave -noupdate -expand -group DUT /tb/dft_sel/DUT/framing_error
add wave -noupdate -expand -group DUT /tb/dft_sel/DUT/scan_clk
add wave -noupdate -expand -group DUT /tb/dft_sel/DUT/scan_rst
add wave -noupdate -expand -group DUT /tb/dft_sel/DUT/test_mode
add wave -noupdate -expand -group DUT /tb/dft_sel/DUT/SE
add wave -noupdate -expand -group DUT /tb/dft_sel/DUT/SI
add wave -noupdate -expand -group DUT /tb/dft_sel/DUT/SO
add wave -noupdate -expand -group INTF /tb/intf/tx_out
add wave -noupdate -expand -group INTF /tb/intf/parity_error
add wave -noupdate -expand -group INTF /tb/intf/framing_error
add wave -noupdate -expand -group INTF /tb/intf/drv_cb/rx_in
add wave -noupdate -expand -group INTF /tb/intf/drv_cb/drv_cb_event
add wave -noupdate -expand -group INTF /tb/intf/mon_cb/tx_out
add wave -noupdate -expand -group INTF /tb/intf/mon_cb/mon_cb_event
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {329900019 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {258214525 ps} {720381979 ps}
