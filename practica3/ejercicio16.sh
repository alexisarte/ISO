#!/bin/bash

# Realizar un script que reciba como parametro una extension
# y haga un reporte con 2 columnas, el nombre de usuario y
# la cantidad de archivos que posee con esa extension.
# Se debe guardar el resultado en un archivo llamado reporte.txt

# Si el exit status del proceso es:
# - 1 indica que no se especifico una extension para buscar.
if [ $# -eq 0 ]; then
	echo "Se debe especificar la extension" >&2
	exit 1
fi

echo -n > reporte.txt

for linea in $(cat /etc/passwd | cut -d: -f 1,6); do
	# iso:/home/iso
	user=$(echo $linea | cut -d: -f1)
	home=$(echo $linea | cut -d: -f2)
	
	#No contabilizaremos usuarios sin directorio personal
	if [ -d $home ]; then	
		echo $user $(find $home -name "*.$1" | wc -l) >> reporte.txt
	fi

done
