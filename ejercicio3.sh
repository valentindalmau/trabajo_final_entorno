#!/bin/bash

[ $# -le 0 ] && echo No hay argumentos && exit 1

regex="^[A-Z][a-z]+$"

for palabra in $@; do
	[[ $palabra =~ [^a-zA-Z] ]] && continue
	[[ $palabra =~ $regex ]] && echo $palabra es un nombre propio
done

exit 0

