onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB /tb/CLK_TB
add wave -noupdate -expand -group TB /tb/RST_TB
add wave -noupdate -expand -group TB /tb/bus_enable_TB
add wave -noupdate -expand -group TB /tb/unsync_bus_TB
add wave -noupdate -expand -group TB /tb/sync_bus_TB
add wave -noupdate -expand -group TB /tb/enable_pulse_d_TB
add wave -noupdate -expand -group DUT /tb/DUT/bus_enable_sync
add wave -noupdate -expand -group DUT /tb/DUT/bus_enable_sync_pulse
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {75 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 179
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
WaveRestoreZoom {0 ns} {255 ns}
