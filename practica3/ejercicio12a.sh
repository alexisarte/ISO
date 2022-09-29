#!/bin/bash

# Evaluación de expresiones
# Este script solicita al usuario que ingrese dos números en la entrada estandar
# e imprime la suma, resta, multiplicación y cuál de los números es mayor

echo "Ingrese un número:"
read numero1
echo "Ingrese otro número:"
read numero2

echo "La suma de los números es: `expr $numero1 + $numero2`"
echo "La resta de $numero1 menos $numero2 es: `expr $numero1 - $numero2`"
echo "La multiplicación de los números es: `expr $numero1 \* $numero2`"

if [ $numero1 -gt $numero2 ]; then
	echo "El número mayor es: $numero1"
elif [ $numero2 -gt $numero1 ]; then
	echo "El número mayor es: $numero2"
else		
	echo "No hay número mayor"
fi
