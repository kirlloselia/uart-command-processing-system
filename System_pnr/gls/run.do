vlib work
vmap work

# Compile Standard Cell Library
vlog -sv $env(PROJECT_HOME)/std_cells/tsmc13_m.v

# Compile Gate-Level Netlist
vlog -sv $env(PROJECT_HOME)/System_pnr/pnr/export/SYS_TOP.v
# Compile Testbench
vlog -sv tb.sv

# Start Simulation
vsim -sdfmax /tb/dft_sel/DUT=SYS_TOP.sdf -sdfnoerror work.tb

# Load waveform 
do wave.do

# Run
run -all
