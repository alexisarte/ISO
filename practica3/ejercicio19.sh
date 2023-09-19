#!/bin/bash

echo "MENU DE COMANDOS"

select option in $(ls -p /home/alexis/ISO/practica3/ | grep -v /) salir 
do
	case $option in
		salir)
			echo "Me alegra haber podido acrlararte esas dudas tan existenciales :)"
			exit;;
		*)
			bash $script;;
	esac
done

