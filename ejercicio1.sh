#!/bin/sh

printf "1 Copia todos los archivos de extensión txt de /home/alumno a /home/alumno/textos\n2 Mueve todos los archivos de extensión txt de /home/alumno a /home/alumno/textos\n3 Elimina todos los archivos de extensión txt de /home/alumno\neliga una opcion:"
read opcion

case $opcion in

1) echo "ha escogido la opcion 1" 
    echo "introduzca el directorio del que quiere mover archivos"
    read origen
    echo "y el destino"
    read destino
    cp home/alumno/*.txt home/alumno/textos
    exit 0;;

2) echo "ha escogido la opcion 2" 
    echo "introduzca el directorio del que quiere mover archivos"
    read origen
    echo "y el destino"
    read destino
    mv home/alumno/*.txt home/alumno/textos
    exit 0;;

3) echo "ha escogido la opcion 3" 
    echo "introduzca el directorio del que quiere borrar el interior"
    read origen
    if [ -d "$origen" ]#CUIDADO CON LOS PUTOS ESPACIOS JODEEER
        then
            rm "$origen/*.txt"
            echo "archivos borrados"
            exit 0
        else
            echo "no existe el directorio"
            exit 1 
            #error de tipo de archivo
            #ME DA ERROR ESTA PARTE Y NO SE POR QUEEEE
    fi
    exit 0;;

*) echo "por favor introduzca una opcion valida" 
    exit 1;;
    #error de opcion no valida

esac