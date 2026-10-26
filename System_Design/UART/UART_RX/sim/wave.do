onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB /tb/clk
add wave -noupdate -expand -group TB /tb/rst_n
add wave -noupdate -expand -group TB /tb/par_typ
add wave -noupdate -expand -group TB /tb/par_en
add wave -noupdate -expand -group TB /tb/prescale
add wave -noupdate -expand -group TB -color Cyan /tb/rx_in
add wave -noupdate -expand -group TB /tb/p_data
add wave -noupdate -expand -group TB -color Yellow /tb/data_valid
add wave -noupdate -expand -group TB /tb/par_err
add wave -noupdate -expand -group TB /tb/stp_err
add wave -noupdate -expand -group TB /tb/test_count
add wave -noupdate -expand -group TB /tb/err_count
add wave -noupdate -expand -group DUT /tb/dut/cnt_en
add wave -noupdate -expand -group DUT /tb/dut/edge_cnt
add wave -noupdate -expand -group DUT /tb/dut/bit_cnt
add wave -noupdate -expand -group DUT -color Magenta /tb/dut/bit_valid
add wave -noupdate -expand -group DUT /tb/dut/dat_samp_en
add wave -noupdate -expand -group DUT /tb/dut/sampled_bit
add wave -noupdate -expand -group DUT /tb/dut/deser_en
add wave -noupdate -expand -group DUT /tb/dut/strt_chk_en
add wave -noupdate -expand -group DUT /tb/dut/strt_glitch
add wave -noupdate -expand -group DUT /tb/dut/par_chk_en
add wave -noupdate -expand -group DUT /tb/dut/stp_chk_en
add wave -noupdate -expand -group DUT /tb/dut/par_pdata_en
add wave -noupdate -expand -group DUT /tb/dut/par_typ_latched
add wave -noupdate -expand -group FSM /tb/dut/controller_inst/current_state
add wave -noupdate -expand -group FSM /tb/dut/controller_inst/next_state
add wave -noupdate -expand -group FSM /tb/dut/controller_inst/par_en_latched
add wave -noupdate -expand -group FSM /tb/dut/controller_inst/latch_config
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1003147191 ps} 0}
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
WaveRestoreZoom {921689968 ps} {1004688064 ps}
