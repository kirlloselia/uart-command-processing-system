onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB /tb/clk
add wave -noupdate -expand -group TB /tb/rst_n
add wave -noupdate -expand -group TB /tb/p_data
add wave -noupdate -expand -group TB -color Cyan /tb/data_valid
add wave -noupdate -expand -group TB /tb/par_en
add wave -noupdate -expand -group TB /tb/par_typ
add wave -noupdate -expand -group TB -color Gold /tb/tx_out
add wave -noupdate -expand -group TB -color Magenta /tb/busy
add wave -noupdate -expand -group TB /tb/error_cnt
add wave -noupdate -expand -group DUT /tb/dut/latch_data
add wave -noupdate -expand -group DUT -color {Medium Aquamarine} /tb/dut/ser_en
add wave -noupdate -expand -group DUT /tb/dut/ser_data
add wave -noupdate -expand -group DUT -color Navy /tb/dut/ser_done
add wave -noupdate -expand -group DUT /tb/dut/par_bit
add wave -noupdate -expand -group DUT /tb/dut/mux_sel
add wave -noupdate -expand -group DUT /tb/dut/mux_in
add wave -noupdate -expand -group controller /tb/dut/controller_inst/current_state
add wave -noupdate -expand -group controller /tb/dut/controller_inst/next_state
add wave -noupdate -expand -group controller /tb/dut/controller_inst/par_en_latched
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1870862 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {1872 ns} {2077616 ps}
