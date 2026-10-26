####################################################################################
# Constraints
# ----------------------------------------------------------------------------
# 0. Design Compiler variables
# 1. Master / Generated Clock Definitions, Latencies, Uncertainties, Transitions
# 2. Clock Relationships
# 3. Input/Output delays on ports
# 4. Driving cells
# 5. Output load
# 6. Operating conditions
# 7. Wireload model
# 8. Premapped cells
####################################################################################

#################### Section 0 : DC Variables ####################
# Prevent assign statements in the generated netlist (must be applied before compile)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

#################### Section 1 : Clock Definition ####################
set uart_clk_name UART_CLK
set ref_clk_name  REF_CLK
set scan_clk_name SCAN_CLK
set UART_CLK_PER  271.267
set REF_CLK_PER   20
set SCAN_CLK_PER  100
set UART_TX_CLK_PER  [expr $UART_CLK_PER * 32]
set UART_RX_CLK_PER  [expr $UART_CLK_PER * 1]
set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW  0.1
set CLK_LAT  0
set CLK_RISE 0.05
set CLK_FALL 0.05

# 1. Master clocks
create_clock -name $uart_clk_name -period $UART_CLK_PER [get_ports UART_CLK]
create_clock -name $ref_clk_name  -period $REF_CLK_PER  [get_ports REF_CLK]
create_clock -name $scan_clk_name -period $SCAN_CLK_PER [get_ports scan_clk]

# 2. Generated clocks
# FIX: tx_clk / rx_clk are NETS, not pins. Use the output pin of the divider instance.
create_generated_clock -master_clock $uart_clk_name -source [get_ports UART_CLK] \
                       -name "TX_CLK" [get_pins tx_clk_div_inst/o_div_clk] \
                       -divide_by 32

create_generated_clock -master_clock $uart_clk_name -source [get_ports UART_CLK] \
                       -name "RX_CLK" [get_pins rx_clk_div_inst/o_div_clk] \
                       -divide_by 1

# NOTE: no generated clock on clk_gate_inst/gated_clk in DFT mode.
# The ALU is clocked by SCAN_CLK through the scan mux and the (clk_en | test_mode) gate.


set all_clks [get_clocks "$uart_clk_name $ref_clk_name RX_CLK TX_CLK $scan_clk_name"]

# 3. Clock latencies
set_clock_latency $CLK_LAT $all_clks

# 4. Clock uncertainties
set_clock_uncertainty -setup $CLK_SETUP_SKEW $all_clks
set_clock_uncertainty -hold  $CLK_HOLD_SKEW  $all_clks

# 5. Clock transitions
set_clock_transition -rise $CLK_RISE $all_clks
set_clock_transition -fall $CLK_FALL $all_clks

# 6. Dont touch network
set_dont_touch_network $all_clks
set_dont_touch_network [get_ports {RST_N scan_rst}]
set_dont_touch_network [get_ports {SE SI}]

#################### Section 2 : Clocks Relationship ####################
set_clock_groups -asynchronous -group [get_clocks "$uart_clk_name RX_CLK TX_CLK"] \
                               -group [get_clocks "$ref_clk_name"]; # \
                               # -group [get_clocks "$scan_clk_name"]

set_clock_groups -logically_exclusive    -group [get_clocks "$uart_clk_name"] \
                                         -group [get_clocks "$scan_clk_name"]

set_clock_groups -logically_exclusive    -group [get_clocks "$ref_clk_name"] \
                                         -group [get_clocks "$scan_clk_name"]

set_clock_groups -logically_exclusive    -group [get_clocks "RX_CLK"] \
                                         -group [get_clocks "$scan_clk_name"]

set_clock_groups -logically_exclusive    -group [get_clocks "TX_CLK"] \
                                         -group [get_clocks "$scan_clk_name"]

#set_clock_groups -logically_exclusive    -group [get_clocks "$uart_clk_name $ref_clk_name RX_CLK TX_CLK"] \
#                                         -group [get_clocks "$scan_clk_name"]


#################### Section 3 : Input/Output delay ####################
#################### Section 3 : Input/Output delay ####################
set uart_rx_in_delay  [expr 0.2*$UART_RX_CLK_PER]
set uart_tx_out_delay [expr 0.2*$UART_TX_CLK_PER]
set uart_rx_out_delay [expr 0.2*$UART_RX_CLK_PER]

set_input_delay  $uart_rx_in_delay  -clock "RX_CLK" [get_ports UART_RX_IN]
set_output_delay $uart_rx_out_delay -clock "RX_CLK" [get_ports {parity_error framing_error}]
set_output_delay $uart_tx_out_delay -clock "TX_CLK" [get_ports UART_TX_OUT]


set scan_in_delay  [expr 0.2*$SCAN_CLK_PER]
set scan_out_delay [expr 0.2*$SCAN_CLK_PER]

set_input_delay  $scan_in_delay  -clock $scan_clk_name [get_ports {SI SE}]
set_output_delay $scan_out_delay -clock $scan_clk_name [get_ports {SO}]

#################### Section 4 : Driving cells ####################
# FIX: there was a space after the backslash, which broke the line continuation
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c \
                 -lib_cell BUFX2M -pin Y \
                 [get_ports UART_RX_IN]

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c \
                 -lib_cell BUFX2M -pin Y \
                 [get_ports {SI SE}]

#################### Section 5 : Output load ####################
# FIX: braces around the port list
set_load 0.1 [get_ports {UART_TX_OUT parity_error framing_error SO}]

set_load 0.1 [get_ports SO]

#################### Section 6 : Operating Condition ####################
# Worst library for max (setup), best library for min (hold)
set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
                         -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
                         -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" \
                         -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

#################### Section 7 : Wireload Model ####################

#################### Section 8 : Premapped cells ####################
set_dont_touch [get_cells clk_gate_inst/*U0]
# the * is because compiler names this unamed block in rtl
# FIX: clk_gate is plain RTL (latch + AND), so cell 'U0' does not exist before compile.
# This only applies if a library ICG cell named U0 is instantiated inside clk_gate_inst.
#set clk_gate_cells [get_cells -quiet clk_gate_inst/*U0]
#if {[sizeof_collection $clk_gate_cells] > 0} {
#    set_dont_touch $clk_gate_cells
#}

#################### Section 9 :  Case Analysis ####################
set_case_analysis 1 [get_port test_mode]
set_case_analysis 1 [get_port SE]
