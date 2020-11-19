transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ex2.vo}

vlog -vlog01compat -work work +incdir+D:/CA\ LAB/week12/ex2 {D:/CA LAB/week12/ex2/alu.v}
vlog -vlog01compat -work work +incdir+D:/CA\ LAB/week12/ex2 {D:/CA LAB/week12/ex2/alu_testbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  alu_testbench

do D:/CA LAB/week12/ex2/Tcl_script2.tcl
