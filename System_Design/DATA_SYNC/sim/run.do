vlib work
vmap work work

vlog -sv ../rtl/*.sv ../tb/*.sv

# 1. Elaborate top module
vsim -voptargs=+acc tb

# 2. Execute wave script and run simulation
do wave.do
run -all