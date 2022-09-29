#!/bin/bash

# Evaluación de expresiones
# Este script solicita al usuario que ingrese dos números en la entrada estandar
# e imprime la suma, resta, multiplicación y cuál de los números es mayor

if [ $# -gt 2 ]; then
	echo "La suma de los números es: `expr $1 $3 $2`"
	echo "La resta de $1 menos $2 es: `expr $1 $4 $2`"
	#echo -e "La multiplicación de los números es: `expr $1 \${$5} $2` \n"
	#echo -e "La división de los números es: `expr $1 $6 $2` \n"

	if [ $1 -gt $2 ]; then
		echo "El número mayor es: $1"
	elif [ $2 -gt $1 ]; then
		echo "El número mayor es: $2"
	else		
		echo "No hay número mayor"
	fi
fi
