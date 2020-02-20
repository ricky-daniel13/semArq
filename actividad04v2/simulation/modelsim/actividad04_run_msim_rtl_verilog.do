transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad04v2 {/home/jorozco/Documentos/semArq/actividad04v2/halfAdder.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad04v2 {/home/jorozco/Documentos/semArq/actividad04v2/fullAdder.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad04v2 {/home/jorozco/Documentos/semArq/actividad04v2/adder4B.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad04v2 {/home/jorozco/Documentos/semArq/actividad04v2/adder8B.v}

vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad04v2 {/home/jorozco/Documentos/semArq/actividad04v2/adder8B_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  adder8B_tb

add wave *
view structure
view signals
run -all
