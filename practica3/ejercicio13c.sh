#!/bin/bash

#recibe un nombre, indica si existe, aclarando si es un archivo o directorio
#si no existe crea un directorio con ese nombre
if [ $# -ne 1 ]; then
	echo "Debe indicar un nombre de archivo"
	exit 1
fi

if [ ! -e "$1" ]; then
	echo "$1 no existe"
	mkdir $1
elif [ -d "$1" ]; then
	echo "Es un directorio"
else
	echo "Es un archivo"
fi
