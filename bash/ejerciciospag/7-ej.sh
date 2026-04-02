#!/bin/bash

#Crear un script de Bash que solicite la edad del usuario y determine si es mayor o menor de edad.

echo "ingrese su edad"

read edad

if [ $edad -ge 18 ];then
	echo "es mayor de edad" 
elif [ $edad -lt 18 ];then 
	echo "menor de edad"
fi
