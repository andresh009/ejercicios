#!/bin/bash

#Crear un script de Bash que solicite al usuario el ingreso de un número par.
#En caso de que sea impar, solicitarlo nuevamente.



while [[ true ]];do

	read -p "Ingrese un numero par: " numero 
	if [[ $(($numero%2)) -eq 0 ]];then 
		break
	else 
		echo "No es par"
	fi  

done 
