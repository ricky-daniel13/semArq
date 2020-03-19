transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad07 {/home/jorozco/Documentos/semArq/actividad07/memoria.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad07 {/home/jorozco/Documentos/semArq/actividad07/bufferrom.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad07 {/home/jorozco/Documentos/semArq/actividad07/bufferalu.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad07 {/home/jorozco/Documentos/semArq/actividad07/martes.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad07 {/home/jorozco/Documentos/semArq/actividad07/ALU.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad07 {/home/jorozco/Documentos/semArq/actividad07/rom.v}

vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad07 {/home/jorozco/Documentos/semArq/actividad07/martes_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  martes_tb

add wave *
view structure
view signals
run -all
