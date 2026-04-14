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
2. desde comando 

```bash

archivos=($(ls))
```

3. evitas problemas con espacios 

```bash

mapfile -t archivos < <(ls)
```

## buenas practicas

1. siempre usar comillas 

```bash
"${array[@]}"
```

2. evitar

```bash

${array[*]}
```
> usar mapfile en vez de $(comando) cuando hay espacios 

## casos reales (nivel practicos)

1. procesar archivos 

```bash

for archivos in *.txt;do
	echo "procesando $archivos"
done 

```

2. validar datos 

```bash

usuarios=("juan" "ana" "pedro")

for u in "${usuarios[@]}";do
	if [[ $u == "ana" ]];then 	
		echo "usuario encontrado"
	fi
done
```

## nivel avanzado 

1. subraya (slicing)

```bash

echo ${numeros[@]:1:2} #desde indice 1,2 elementos

```

2. reemplazo en arrays

```bash

echo ${numeros[@]/20/99}

```

3. convertir string en array 

```bash

IFS=',' read -ra datos <<< "a,b,c,d"
```

4. arrays como parametros 

```bash
funcion() {
	local array=("$@")
	echo ${array[@]}

}
funcion "${numeros[@]}"

```

## errores comunes 

1. no usar comillas 

```bash

for i in ${array[@]}  # mal 

for i in "${array[@]}" #bien 

```
2. usar ls 


```bash
files=($(ls))  #peligroso

mapfile -t files < <(ls)
```
> mapfile forma segura de cargar datos 
