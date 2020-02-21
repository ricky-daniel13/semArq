#!/bin/sh    
#SINCRONIZA AUTOMATICAMENTE LOS PROYECTOS DE SEMINARIO DE ARQUITECTURA A GITHUB
#Orozco Torrez José Iván
itest=$(fping google.com | grep conectado)
i=0;
while [ "$itest" == "" ] 
    do
    sleep 5
    itest=$(fping google.com | grep conectado)
    if [$i == 9];
    then
        echo "no tienes conexion"
        exit 1
    fi
    $i ++
done
echo Conectado
cd ~/Documentos/semArq
clean=$(git status | grep "Sin cambios")
if [ -z "$clean" ]; then
    git pull
    git add .
    git commit -m "Nuevo Cambio $(date)"
    git push -vvv git@github.com:vandelvan/semArq.git master
else
    echo Sin cambios.
fi