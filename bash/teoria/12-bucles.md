# BUCLES

## FOR
### se usa cuando sabes cuantas veces repetir algo 

1. lista explicita 

```bash
for i in 1 2 3 4 5
do
  echo $i
done
```
2. rango
```bash
for i in {1..5};do
	echo $i
done
```
```bash 
for i in {1..10..2};do 
	echo $i
done
```
3. estilo C 
```bash
for ((i=1;i<5;i++));do
	echo $i
done
```
4. con arrays
```bash
numeros=(10 20 30)

for n in "${numeros[@]}";do 
	echo $i
done
```
5. iterar archivos
```bash
for archivos in *.txt;do
	echo $archivos
done
```
6. con salida de comandos 
```bash
for usuario in $(cat usuarios.txt);do
	echo $usuario
done
```
## WHILE 
### se ejecuta mientras se cumpla una condicion
```bash 
i=1
while [ $i -le 5 ];do 
	echo $i
	((i++))
done
```
