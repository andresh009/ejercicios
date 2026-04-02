#!/bin/bash

#Crear un script de Bash que reciba un número entero e indique si el número es par o impar.

echo "ingrese un numero"

read numero

if [ $((numero%2)) -eq 0 ];then
	echo "es un numero par"
elif [ $((numero%2)) -eq 1 ];then 
	echo "es un numero impar"
fi

