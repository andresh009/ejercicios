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
### $1,$2,etc
### $@ todos los parametros
### $# cantidad de parametros 

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

