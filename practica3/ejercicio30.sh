#!/bin/bash

# -F agrega un asterisco al final de los archivos ejecutables
files=($(ls -F | grep "*$"))
if [ ${#files[*]} -eq 0 ]; then
	exit 1
fi

bin="$HOME/bin"
if [ ! -d $bin ]; then
	mkdir $bin
fi

mv ${files[*]} $bin

