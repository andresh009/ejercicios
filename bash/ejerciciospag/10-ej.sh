#!/bin/bash

#Crear un script de Bash que reciba las longitudes de los lados de un triángulo y que luego
#indique si se trata de un triángulo equilátero, isósceles o escaleno.


echo "ingrese los lados de un triangulo"

read primero

read segundo

read tercero 

if [[ "$primero" == "$segundo" && "$primero" == "$tercero" ]];then 
	echo "es equilatero"
elif [[ "$primero" == "$segundo" || "$primero" == "$tercero" || "$segundo" == "$tercero" ]];then
	echo "es isosceles"
else 
	echo "es escaleno"
fi

