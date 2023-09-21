#!/bin/bash

array=();

#inicializar: Crea un arreglo llamado array vacío 
function inicializar {
	array=();
	echo "Arreglo inciado"
}


#agregar_elem <parametro1>: Agrega al final del arreglo el parámetro recibido 
function agregar_elem {
	if [ $# -ne 1 ]; then
		echo "Ingrese un parámetro"
		return 1;
	fi
	array+=("$1")
	echo "Elemento $1 agregado al array"
}


#eliminar_elem <parametro1>: Elimina del arreglo el elemento que se encuentra en la posición recibida como parámetro. Debe validar que se reciba una posición válida 
function eliminar_elem {
	if [ $# -ne 1 ]; then
		echo "Ingrese un parámetro"
		return 1;
	fi

	if [ $1 -ge ${#array[*]} ]; then
		echo "Posición inválida"
		return 2
	fi
	
	unset array[$1]
	
	array=(${array[*]});
	
	echo "Elemento en la posición $1 fue eliminado"
}


#longitud: Imprime la longitud del arreglo en pantalla 
function longitud {
	echo ${#array[*]}
}

#imprimir: Imprime todos los elementos del arreglo en pantalla 
function imprimir {
	echo ${array[*]}
}

#inicializar_Con_Valores <parametro1><parametro2>: Crea un arreglo con longitud <parametro1>y en todas las posiciones asigna el valor <parametro2>
function inicializar_con_valores { 	
	if [ $# -ne 2 ]; then
		echo "Cantidad de parametros incorrecta"
		return 3
	fi

	inicializar
	for((i=0; i < $1; i++)); do
		agregar_elem $2
	done

	echo "Arreglo inicializado con $1 veces el valor $2"
}

echo "Seleccione una opción"

select action in inicializar agregar_elem eliminar_elem longitud imprimir inicializar_con_valores terminar 
do
	case $action in 
		"inicializar")
			inicializar;;
		"agregar_elem")
			echo "Ingresar un elemento"
			read element
			agregar_elem $element;;
		"eliminar_elem")
			echo "Indique posición a eliminar"
			read position
			eliminar_elem $position;;
		"longitud")
			echo "El arreglo tien $(longitud) elementos";;
		"imprimir")
			echo "Arreglo: $(imprimir)";;
		"inicializar_con_valores")
			echo "Ingrese cantidad"
			read cant
			echo "Ingrese valor"
			read valor
			inicializar_con_valores $cant $valor;;
		"terminar")
			echo "Finalizando proceso"
			exit;;
	esac
done
