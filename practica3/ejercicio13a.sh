#!/bin/bash

for((i=1; i<=100; i++))
do
	echo "Número: $i, cuadrado: $(expr $i \* $i)"
done
