transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad05 {/home/jorozco/Documentos/semArq/actividad05/suma.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad05 {/home/jorozco/Documentos/semArq/actividad05/resta.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad05 {/home/jorozco/Documentos/semArq/actividad05/multiplicacion.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad05 {/home/jorozco/Documentos/semArq/actividad05/compAnd.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad05 {/home/jorozco/Documentos/semArq/actividad05/compOr.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad05 {/home/jorozco/Documentos/semArq/actividad05/compNand.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad05 {/home/jorozco/Documentos/semArq/actividad05/actividad05.v}

vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad05 {/home/jorozco/Documentos/semArq/actividad05/actividad05_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  actividad05_tb

add wave *
view structure
view signals
run -all
