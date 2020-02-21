#!/bin/sh    
#SINCRONIZA AUTOMATICAMENTE LOS PROYECTOS DE SEMINARIO DE ARQUITECTURA A GITHUB
#Orozco Torrez José Iván
itest=$(fping google.com | grep alive)
i=0;
while [ "$itest" == "" ] 
    do
    sleep 5
    itest=$(fping google.com | grep alive)
    if [ $i -eq 4 ];
    then
        echo "no tienes conexion"
        exit $?
    fi
    let "i++"
done
echo Conectado
cd ~/Documentos/semArq
clean=$(git status | grep "nothing to commit (working directory clean)")
if [ -z "$clean" ]; then
    git pull
    git add .
    git commit -m "Nuevo Cambio $(date)"
    git push -vvv git@github.com:vandelvan/semArq.git master
else
    echo Sin cambios.
fi