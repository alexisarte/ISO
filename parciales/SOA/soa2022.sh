#!/bin/bash

if [ $# -ne 1 ];  then
	echo "Se espera por parametro un nombre de usuario"
	exit 2
fi

if [ $(cat /etc/passwd | cut -d: -f1 | grep -x "$1" | wc -l) -ne 1 ];  then
	echo "$1 no es un usuario del sistema"
	exit 1
fi

count=0
while true; do
	if [ $(who | grep $1 | wc -l) -ne 0  ];  then
		((count++))
		echo "Usuario $1 logueado"
		echo "$1 $(date)" >> $HOME/access-$1.log
		if [ $count -eq 30 ]; then
			exit 0
		fi
	fi 
	sleep 30
done

