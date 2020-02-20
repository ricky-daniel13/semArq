#SINCRONIZA AUTOMATICAMENTE LOS PROYECTOS DE SEMINARIO DE ARQUITECTURA A GITHUB
#Orozco Torrez José Iván

clean=$(git status | grep "nothing to commit (working directory clean)")
if [ -z "$clean" ]; then
    git pull
    git add .
    git commit -m "Nuevo Cambio $(date)"
    git push -vvv git@github.com:vandelvan/semArq.git master
else
    echo Branch is clean.
fi