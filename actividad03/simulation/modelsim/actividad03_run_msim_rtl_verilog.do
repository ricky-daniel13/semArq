transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad03 {/home/jorozco/Documentos/semArq/actividad03/actividad03.v}

