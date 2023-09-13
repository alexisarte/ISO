#!/bin/bash

if [ $# -eq 1 ]; then
	if [ -e "$1" ]; then
	      	echo "La entidad $1 existe"
		if [ -f "$1" ]; then
			echo "Es un archivo"
		elif [ -d "$1" ]; then
			echo "Es un directorio"
		else
			echo "No es un archivo ni un directorio"
		fi
	else
		echo "La entiad $1 no existe, se creará el directorio $1"
		mkdir "$1"
	fi
fi
