#!/bin/bash

if [ $# -ne 3 ]; then
	exit 1
fi

# Verificar si el directorio existe
if [ ! -d "$1" ]; then
	echo "El directorio $1 no existe"
    	exit 1
fi

# Iterar sobre los archivos encontrados por find
for file in $(find $1 -type f); do
	name=$(basename "$file")
	if [ "$2" == "-a" ]; then
		mv "$file" "$(dirname "$file")/$name$3"     
    	elif [ "$2" == "-b" ]; then	
		mv "$file" "$(dirname "$file")/$3$name"     
	else
		echo "Parámetro inválido"
    fi
done
