#!/bin/bash

echo "voy a copiar"

Cp /home/maria/* /home/backup 
If [test $? –eq 0]
    Then 
        echo “finalizado con copia seguridad” 
        exit 0
    Else 
        echo “hubo un error” 
        exit - 1
fi
#Si ejecuto el script y acontinuacion 