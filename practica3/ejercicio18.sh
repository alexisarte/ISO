#!/bin/bash

#Recibe como parámetro un nombre de usuario

if [ $# -ne 1 ]; then
	echo "La cantidad de parametros es incorrecta"
	exit 1
fi

#Se podría validar contra el /etc/passwd que el usuario exista
while true; do
	seLogueo=$(who | grep "^$1 " | wc -l)
	if [ $seLogueo -ne 0 ]; then
		echo "Usuario $1 logueado"
		exit 0
	fi
	sleep 10
done
