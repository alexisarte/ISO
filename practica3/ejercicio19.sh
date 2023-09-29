#!/bin/bash

echo "MENU DE COMANDOS"

select option in $(ls | grep "\.sh") salir 
do
	case $option in
		salir)
			echo "Me alegra haber podido acrlararte esas dudas tan existenciales :)"
			exit;;
		*)
			bash $option;;
	esac
done

