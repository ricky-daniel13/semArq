#!/bin/bash
#SINCRONIZA AUTOMATICAMENTE LOS PROYECTOS DE SEMINARIO DE ARQUITECTURA A GITHUB
#Orozco Torrez José Iván
check=$(ps aux | grep quartus | grep -v grep)
while [ -z "$check" ]
    do
    check=$(ps aux | grep quartus | grep -v grep)
done

check=$(ps aux | grep quartus | grep -v grep)
while [ ! -z "$check" ]
    do
    check=$(ps aux | grep quartus | grep -v grep)
done

itest=$(fping github.com | grep alive)
i=0;
while [ -z "$itest" ] 
    do
    sleep 5
    itest=$(fping github.com | grep alive)
    if [ $i -eq 4 ];
    then
        echo "no tienes conexion"
        exit $?
    fi
    let "i++"
done
echo Conectado
cd ~/Documentos/semArq
clean=$(git status | grep "nothing to commit, working tree clean")
if [ -z "$clean" ]; then
    git pull
    git add .
    git commit -m "Nuevo Cambio $(date)"
    git push -vvv git@github.com:vandelvan/semArq.git master
else
    echo Sin cambios.
fi