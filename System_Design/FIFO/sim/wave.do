onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB /tb/i_w_clk
add wave -noupdate -expand -group TB /tb/i_w_rstn
add wave -noupdate -expand -group TB /tb/i_w_inc
add wave -noupdate -expand -group TB /tb/i_r_clk
add wave -noupdate -expand -group TB /tb/i_r_rstn
add wave -noupdate -expand -group TB /tb/i_r_inc
add wave -noupdate -expand -group TB /tb/i_w_data
add wave -noupdate -expand -group TB /tb/o_r_data
add wave -noupdate -expand -group TB /tb/o_full
add wave -noupdate -expand -group TB /tb/o_empty
add wave -noupdate -expand -group TB /tb/Burst_Words
add wave -noupdate -expand -group TB /tb/WR_WORD
add wave -noupdate -expand -group TB /tb/RD_WORD
add wave -noupdate -expand -group DUT /tb/DUT/w_addr
add wave -noupdate -expand -group DUT /tb/DUT/r_addr
add wave -noupdate -expand -group DUT /tb/DUT/r_ptr_sync
add wave -noupdate -expand -group DUT /tb/DUT/r_ptr_gray
add wave -noupdate -expand -group DUT /tb/DUT/w_ptr_sync
add wave -noupdate -expand -group DUT /tb/DUT/w_ptr_gray
add wave -noupdate /tb/DUT/u_asyc_fifo_mem/mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {27189 ps} 0}
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
WaveRestoreZoom {0 ps} {266179 ps}
