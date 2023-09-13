#!/bin/bash

# Evaluación de expresiones
# Este script recibe dos números por parámetro
# e imprime la suma, resta, multiplicación y cuál de los números es mayor

if [ $# -ne 2 ]; then
	exit 1;	
else	
	echo "La suma de los números es: `expr $1 + $2`"
	echo "La resta de $1 menos $2 es: `expr $1 - $2`"
	echo "La multiplicación de los números es: `expr $1 \* $2`"

	if [ $1 -gt $2 ]; then
		echo "El número mayor es: $1"
	elif [ $2 -gt $1 ]; then
		echo "El número mayor es: $2"
	else		
		echo "No hay número mayor"
	fi
fi
exit 0
