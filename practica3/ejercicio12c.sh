#!/bin/bash

# Evaluación de expresiones
# Este script solicita al usuario que ingrese dos números en la entrada estandar
# e imprime la suma, resta, multiplicación y cuál de los números es mayor

if [ $# -gt 2 ]; then
	echo "El resultado de la operación es $( expr $1 "$2" $3 )"
fi
