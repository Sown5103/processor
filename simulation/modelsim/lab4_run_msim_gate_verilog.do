transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {lab4.vo}

vlog -vlog01compat -work work +incdir+D:/hdl/week4th {D:/hdl/week4th/ALU_testbench.v}

vsim -t 1ps -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  ALU_testbench

add wave *
view structure
view signals
run -all
