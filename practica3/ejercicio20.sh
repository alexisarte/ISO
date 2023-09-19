#!/bin/bash

pila=()

function push {
	pila+=("$1")
}

function pop {
	unset 'pila[$(length) - 1]'
}

function length {
	echo ${#pila[*]}
}

function println {
	echo ${pila[*]}
}

echo "Tamanio:"
length
push 20
push 30
println
echo "Tamanio:"
length
pop
pop
echo "Tamanio:"
length

