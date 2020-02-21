#!/bin/sh    
#SINCRONIZA AUTOMATICAMENTE LOS PROYECTOS DE SEMINARIO DE ARQUITECTURA A GITHUB
#Orozco Torrez José Iván
itest=$(fping google.com | grep alive)

while [ "$itest" == "" ] 
    do
    sleep 5
    itest=$(fping google.com | grep alive)
done
echo Conectado!
cd ~/Documentos/semArq
clean=$(git status | grep "nothing to commit (working directory clean)")
if [ -z "$clean" ]; then
    git pull
    git add .
    git commit -m "Nuevo Cambio $(date)"
    git push -vvv git@github.com:vandelvan/semArq.git master
    ivanorozco
else
    echo Branch is clean.
fi