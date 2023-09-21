#!/bin/bash

users=($(cat /etc/group | grep users | cut -d: -f4| tr ',' ' '))

if [ $# -eq 0 ]; then
	echo "Se debe proporcionar un parámetro o dos"
	exit 1
fi

case $1 in
	-b)
		if [ $2 -lt ${#users[*]} ]; then
			echo ${users["$2"]}
		else
			echo "Posición fuera de rango"
			exit 1
		fi
	;;
	-l)
		echo "Cantidad de usuarios: ${#users[*]}";;
	-i)
		echo "Usuarios: ${users[*]}";;

esac
			

