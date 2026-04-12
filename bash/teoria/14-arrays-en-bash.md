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


