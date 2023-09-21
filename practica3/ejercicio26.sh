#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Debe proporcionar al menos una ruta absoluta por parámetro"
	exit 1
fi

routes=($*)
let cantInexistente=0
for((i=0; i < ${#routes[*]}; i++)); do
	if (($i % 2 != 0)); then
		if [ ! -e ${routes[$i]} ]; then
			echo "${routes[$i]} no existe"
			let cantInexistente++
		elif [ -d ${routes[$i]} ]; then
			echo "${routes[$i]} es un directorio"
		else
			echo "${routes[$i]} es un archivo"
		fi
	fi
done

echo "La cantidad de archivos o directorios inexistentes en el sistema es: $cantInexistente"

