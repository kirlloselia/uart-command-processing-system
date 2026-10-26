onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB /tb/i_ref_clk
add wave -noupdate -expand -group TB /tb/i_rst_n
add wave -noupdate -expand -group TB /tb/i_clk_en
add wave -noupdate -expand -group TB /tb/i_div_ratio
add wave -noupdate -expand -group TB /tb/o_div_clk
add wave -noupdate -expand -group DUT /tb/dut/odd_div_ratio
add wave -noupdate -expand -group DUT /tb/dut/clk_en
add wave -noupdate -expand -group DUT /tb/dut/odd
add wave -noupdate -expand -group DUT /tb/dut/div_clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ps} {150770 ps}
