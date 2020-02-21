#!/bin/sh    
#SINCRONIZA AUTOMATICAMENTE LOS PROYECTOS DE SEMINARIO DE ARQUITECTURA A GITHUB
#Orozco Torrez José Iván
itest=$(fping google.com | grep conectado)

while [ "$itest" == "" ] 
    do
    sleep 5
    itest=$(fping google.com | grep conectado)
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