#!/bin/bash

num=(10 3 5 7 9 3 5 4)

function productora {
	total=1
	for n in ${num[*]}
	do
		echo "element: $n"
		total=$(($total * $n))		
	done
	echo "total: $total"
}

productora

