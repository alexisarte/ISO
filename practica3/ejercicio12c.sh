#!/bin/bash

# Evaluación de expresiones
# Este script recibe por parametro, operador, operación y operador, en ese orden 
# e imprime el resultado de la operación

if [ $# -ne 3 ]; then
	exit 1
else
	echo "El resultado de la operación es: $(expr $1 $2 $3)"
fi
exit 0
