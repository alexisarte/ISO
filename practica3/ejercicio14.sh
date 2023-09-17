#!/bin/bash

# Recibe parámetros -a CADENA o -b CADENA
# $1 nombre del directorio, $2 es -a o -b, $3 es CADENA
# Ejemplo de Ejecucón bash -x ejercicio14RenombraArchivos /root/scripts/ejercicio14 -b zzzzzz

if [ $# -ne 3 ]; then
	echo "La cantidad de parametros es incorrecta"
	exit 1
fi

# Verificar si el directorio existe
if [ ! -d "$1" ]; then
	echo "El primer parametro no es un directorio existente"
    	exit 2
fi


if [ -z "$3" ]; then
	echo "El tercer parametro es nulo"
	exit 3
fi

# Iterar sobre los archivos encontrados por find
for file in $(find $1 -type f); do
	name=$(basename "$file")
	if [ "$2" == "-a" ]; then
		mv "$file" "$1/$name$3"     
    	elif [ "$2" == "-b" ]; then	
		mv "$file" "$1/$3$name"     
	else
		echo "El segundo parámetro debe ser -a o -b"
    	fi
done
