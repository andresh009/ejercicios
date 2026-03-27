#!/bin/bash

#Crear un script de Bash que le solicite al usuario el ingreso de un número e indicar si
#el número es mayor, menor o igual a 0. Imprimir por pantalla

echo "ingrese un numero"

read numero

if [ $numero -gt 0 ];then
	echo "mayor que cero"
elif [ $numero -lt 0 ];then
	echo "menor que cero"
else
	echo "es cero"
fi

