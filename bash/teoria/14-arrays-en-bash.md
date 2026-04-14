# ARRAYS Y ESTRUCTURAS DE DATOS EN BASH

## Arrays en bash

1. crear un array

```bash
numeros = (10 20 30 40)
```
2. acceder a elementos

```bash
echo ${numeros[0]} #10
echo ${numeros[1]} #20
echo ${numeros[2]} #30
```
3. mostrar todos los elementos

```bash
echo ${numeros[@]}
```
4. cantidad de elementos

```bash

echo ${#numeros[@]}
```

## Modificar arrays

1. agregar elementos

```bash

numeros+=(50)
```
2. modificar un valor

```bash
numeros[1]=25
```
3. eliminar un elemento

```bash
unset numeros[2]
```
## Iterar array

1. forma basica 

```bash

for num in ${numeros[@]};do
	echo $num
done
```
2. usando indices

```bash
for i in "${!numeros[@]}";do
	echo "Indices: $i - valor ${numeros[$i]}"
done
```
## Arrays asociativos
### un array asociativo es una estructura de datos que guarda informacion en forma de pares claves:en una array normal accedes por indice en un array asociativo accedes por una clave personalizada

```bash

persona = {
    "nombre": "Juan",
    "edad": 25,
    "ciudad": "Buenos Aires"
}

```

1. declarar 

```bash

declare -A persona
```
> crea un array asociativo 

2. asignar valores 

```bash 

persona[nombre]="juan"
persona[edad]=30

```
3. acceder 

```bash

echo ${persona[nombre]}
```
4. recorrer 

```bash

for clave in "${!persona[@]}";do
	echo "$clave -> ${persona[$clave]}"
done
```
## operaciones utiles 

1. obtener indices 

```bash
echo ${!numeros[@]}
```
2. copiar arrays 

```bash
copia=("${numeros[@]}")
```
3. concatenar arrays 

```bash
a=(1 2)
b=(3 4)
c=("${a[@]}" "${b[@]}")
```
## arrays desde entrada o comandos

1. leer desde el teclado

```bash
read -a datos
echo ${datos[@]}
```
2. 

