#!/bin/bash

#Crear un script de Bash que solicite el ingreso de un número n y que luego calcule su factorial

read -p "Ingrese un numero:" numero 

factorial=1

for ((i=1;i<=$numero;i++));do
	((factorial*=$i))
	echo $factorial
done

echo "$factorial"

