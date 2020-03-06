#!/bin/bash
#Genera automaticamente TestBench
#Orozco Torrez José Iván
echo "elige un directorio"
select dir in */; do test -n "$dir" && break; echo "INVALIDO"; done
cd "$dir" && pwd
echo "elige un archivo para generar el TB"
select ar in ./*.v; do test -n "$ar" && break; echo "INVALIDO"; done
mod=$(awk -F 'module ' '{print $2}' "$ar")
mod=$(cut -d'(' -f1 <<< "$mod")
echo $mod
ins=$(awk '/input/,/output/' "$ar")
ins=${ins//input/reg}
ins=${ins//,/;}
outs=$(awk '/output/,/)/' "$ar")
outs=${outs//output/wire}
outs=${outs//reg/}
outs=${outs//,/;}
tb="./${mod}_tb.v"
echo "\`timescale 1ns/1ns" > $tb
echo "module ${mod}_tb();" >> $tb
echo $ins   >> $tb
echo $outs   >> $tb
echo "${mod} ${mod::1}(" >> $tb
for i in ${ins}; do
    j=${i//reg/}
    j=${i//;/}
    echo "${j}.(${j})," >> $tb
done
for i in ${outs}; do
    j=${i//wire/}
    j=${i//;/}
    echo "${j}.(${j})," >> $tb
done
echo ");"   >> $tb
echo "initial" >> $tb
echo "begin"    >> $tb

echo "end"  >> $tb
echo "endmodule" >> $tb
cat $tb