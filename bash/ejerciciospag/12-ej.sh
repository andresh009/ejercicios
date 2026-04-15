#!/bin/bash

#Crear un script de Bash que imprima los primeros n números naturales. Solicitar al usuario el ingreso de n.



read  -p "ingrese un numero: " numero
 

if [[ $numero -ge 1 ]];then

	for ((i=1;i<=$numero;i++));do
		echo "$i"
	done
fi

