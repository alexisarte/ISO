#!/bin/bash

files=($(ls $HOME | grep '\.doc$'))

function buscarPosicion {	
	for((i=0; i < ${#files[*]}; i++)) do
		if [ "$1" = ${files[$i]} ]; then
			echo "$i"
			exit
		fi
	done
	echo -1
}

existe archivo

function verArchivo {
	pos=$(buscarPosicion "$1")
	echo "pos: $pos"	
	if [ $pos -eq -1 ]; then
		echo "Archivo no encontrado"		
		return 5
	fi
	echo $(cat "$HOME/$1")
}

function cantidadArchivos {
	echo ${#files[*]}
}

function borrarArchivo {
	pos=$(buscarPosicion "$1")
	
	if [ $pos -eq -1 ]; then
		echo "Archivo no encontrado"		
		return 10
	fi

	echo "¿Quiere eliminar el archivo lógicamente? (y/n)"
	read response

	if [ "$response" = "n" ]; then
		sudo rm "$HOME/$1"
		echo "Archivo eliminado del FS"	
	fi
	echo $1
	unset files[$pos]
}

verArchivo "ejercicio9.doc"
cantidadArchivos
echo "elementos: ${files[*]}"
borrarArchivo "ejercicio9.doc"
cantidadArchivos
echo "elementos: ${files[*]}"
