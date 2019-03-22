#!/bin/bash

#varibles de entorno
echo 'muestro variables de entorno'
echo 'pwd'  $PWD
echo 'home' $HOME
echo 'path' $PATH
echo 'lang' $LANG

echo "####################################################################"


case $# in
# script que valora el numero de parametros que le pasamos
# ej: bash script.sh 1 2

1)  echo "el script recibe solo un parametro"
    printf "el primer y unico parametro es: \n $1";;

#* es para el caso default.
*) echo "el script recibe más de un parametro"
    #se puede usar "exit" para evitar un valor de finalizacion
    printf "los parametros son : \n"
    for parametro in $*
    do 
        echo $parametro exit
    done

esac

#= para cadenas
#eq para numeros

#muestra las carpetas que se encuentran en la direcion
#for variable in pwd ls -la
#for v in `pwd` `ls -la`

#tras ejecutar en la terminal "bash practica.sh"
#relizamos el comando "echo $?" el cual nos devuelve el estado de salida del comando anterior
    #si exit 0 TODO BIEN
    #si exit >0 ALGO VA MAL  