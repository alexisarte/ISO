#!/bin/bash

vector1=( 1 80 65 35 2 )
vector2=( 5 98 3 41 8 )

function productora {
	for((i=0; i<${#vector1[*]}; i++)); do
		result=$((${vector1[i]} + ${vector2[i]}))
		echo "La suma de los elementos de la posición $i de los vectores es $result"
	done
}

productora

