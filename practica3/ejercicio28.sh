#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Debe proporcionar al menos un nombre de directorio"
	exit 1
fi

if [ ! -d $1 ]; then
	echo "El directorio no existe"
	exit 4
fi

cantFiles=0
for file in $(ls -p $1 | grep -v /); do
	if [ -r "$file" ] && [ -w "$file" ]; then
		let cantFiles++
	fi
done

echo "Cantidad de archivos que puedes leer y escribir: $cantFiles"

