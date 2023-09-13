#!/bin/bash

echo Elija una opción:
select opcion in Listar DondeEstoy QuienEsta Salir
do
	case $opcion in 
		Listar)
			ls;;
		DondeEstoy)
			pwd;;
		QuienEsta)
			whoami;;
		Salir)
			exit;;
	esac
done
