# FUNCIONES EN BASH
## CREAR FUNCIONES 
### una funcion es un bloque de codigo reutilizable 

```bash
mi_funcion() {
	echo "hola desde la funcion"
}
```

```bash
function mi_funcion() {
	echo "hola"
}
```
### se llama a la funcion mi_funcion no mi_funcion()

## PASAR PARAMETRO 
### las funciones reciben argumentos como un script
```bash
saludar() {
	echo "hola $1"
}
saludar "andres"
```
> $1,$2,etc
> $@ todos los parametros
> $# cantidad de parametros 

## MULTIPLES PARAMETROS 
```bash
sumar() {
	resultad= $(($1+$2))
	echo "$resultado"
}
```
## USAR TODOS LOS PARAMETROS 
```bash
imprimir_todos() {
	for arg in "$@";do
		echo "$arg"
	done
}

imprimir_todos uno dos tres
```
## RETORNAR VALORES 
### bash no retorna valores como otros lenguajes 
1. codigo de salida(return)
```bash
es_par() {
	if (($1%2==0));then
		return 0
	else 
		return 1
	fi
}
es_par 4
echo $?
```
2. retornar con echo(mas usado)
```bash
sumar() {
	echo $(($1+$2))
}
resultado=$(sumar 1 2)
echo "resultado: $resultado"
```
## BUEN PATRON 
```bash
obtener_fecha() {
	date + "%y-%m-%d"
}
fecha=$(obtener_fecha)
```
## VARIABLES LOCALES 
### evitar conflictos en script grandes
```bash
mi_funcion() {
	local nombres="andres"
	echo "$nombres"
}
```
> local -> solo existe dentro de la funcion

## ORGANIZACION DE SCRIPTS GRANDES 
### Las funciones ayudan a estructurar mejor el codigo 

```bash
#!/bin/bash

mostrar_menu() {
  echo "1. Saludar"
  echo "2. Salir"
}

saludar() {
  echo "Hola $1"
}

main() {
  mostrar_menu
  read opcion

  case $opcion in
    1) saludar "Usuario" ;;
    2) exit 0 ;;
    *) echo "Opción inválida" ;;
  esac
}

main
```
## Buenas practicas 

1. nombres claros 
2. usar local siempre que puedas 
3. separar logica en funciones pequenas
4. evitar repetir codigo 
5. crear una funcion main

## Dividir en archivos 
### puedes reutilizar funciones en otros scripts

```bash
# archivo: funciones.sh
saludar() {
  echo "Hola $1"
}
```
```bash
# script principal
source funciones.sh

saludar "Andrés"
```
