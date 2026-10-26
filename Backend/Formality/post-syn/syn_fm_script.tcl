
########################### Define Top Module ############################
                                                   
set top_module sys_top

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "../../Synthesis/$top_module.svf"


set SSLIB "$::env(PROJECT_HOME)/std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "$::env(PROJECT_HOME)/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "$::env(PROJECT_HOME)/std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

######################### Reference Container ############################

## Read Reference technology libraries
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

## Read Reference Design Files
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/ALU/rtl/ALU.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/SYS_CTRL/rtl/sys_ctrl.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/CLK_GATE/rtl/clk_gate.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/SYS_TOP/rtl/SYS_TOP.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/CLOCK_DIVIDER/rtl/clk_div.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/UART/UART_RX/rtl/rx_controller.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/UART/UART_RX/rtl/data_sampling.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/UART/UART_RX/rtl/deserializer.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/UART/UART_RX/rtl/edge_bit_counter.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/UART/UART_RX/rtl/parity_check.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/UART/UART_RX/rtl/stop_chk.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/UART/UART_RX/rtl/strt_check.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/UART/UART_RX/rtl/uart_rx.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/UART/UART_TOP/rtl/uart.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/UART/UART_TX/rtl/tx_controller.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/UART/UART_TX/rtl/counter.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/UART/UART_TX/rtl/mux.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/UART/UART_TX/rtl/parity_calc.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/UART/UART_TX/rtl/serializer.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/UART/UART_TX/rtl/uart_tx.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/DATA_SYNC/rtl/bit_sync.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/DATA_SYNC/rtl/data_sync.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/DIV_MUX/rtl/div_mux.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/FIFO/rtl/asyc_fifo_mem.v
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/FIFO/rtl/ASYNC_FIFO.v
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/FIFO/rtl/async_fifo_read_pointer.v
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/FIFO/rtl/async_fifo_write_pointer.v
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/FIFO/rtl/b2g.v
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/FIFO/rtl/synchronizer_2ff.v
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/PULSE_GEN/rtl/pulse_gen.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/RegFile/rtl/RegFile.sv
read_sverilog -container Ref $::env(PROJECT_HOME)/System_Design/RST_SYNC/rtl/rst_sync.sv


## set the top Reference Design 
set_reference_design $top_module
set_top $top_module

######################## Implementation Container #########################

## Read Implementation Design Files
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]
## Read Implementation technology libraries
read_ddc -container Imp $::env(PROJECT_HOME)/Backend/Synthesis/netlists/sys_top.ddc
## set the top Implementation Design
set_implementation_design $top_module
set_top $top_module


## matching Compare points
match

## verify
set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui

