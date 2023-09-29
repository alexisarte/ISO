#!/bin/bash

# Es una buena práctica agregar un breve comentario que documente qué hacen
# los scripts que escribimos, para que nuestro "futuro yo" no quiera volver
# en el tiempo a golpearnos la cabeza contra el teclado por no entender qué
# quisimos hacer en el script de 625 lineas que dejó de funcionar

echo "Introduzca su nombre y apellido:"
read nombre apellido
echo "Fecha y hora"
date
echo "Su apellido y nombre es:"
echo "$apellido $nombre"
echo "Su usuario es: `whoami`"
echo "Su directorio actual es:"
pwd
echo "La cantidad de espacio libre en disco es: `df -h`"
echo "Directorio personal: $HOME"
echo "Introduzca el directorio del cual desea listar sus archivos:"
read directorio
ls $directorio
