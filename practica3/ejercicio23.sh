#!/bin/bash

num=(10 3 5 7 9 3 5 4)

function productora {
	for n in ${num[*]}; do
		if [ $(($n % 2)) -eq 0 ]; then	
			echo "Número par: $n"		
		else
			let cantImpar++
		fi
	done
	echo "Total de números impares: $cantImpar"
}

productora

