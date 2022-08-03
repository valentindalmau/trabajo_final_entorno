#!/bin/bash

cont=0
maxpal=""
minpal=""
largomax=0
largomin=0
sum=0

[ $# -eq 0 ] && echo "No hay argumentos" && exit 1

for palabra in $@; do
	[[ "${palabra}" =~ [^a-zA-Z] ]] && continue
	largo=`echo $palabra | awk '{print length}'`
	if [ $cont -eq 0 ]; then
		maxpal=($palabra)
		largomax=($largo)
	fi

	if [ $largo -gt $largomax ]; then
		maxpal=($palabra)
		largomax=($largo)
	fi

	if [ $cont -eq 0 ]; then
                minpal=($palabra)
		largomin=($largo)
	fi
        if [ $largo -lt $largomin ]; then
		minpal=($palabra)
		largomin=($largo)
	fi
	sum=$((sum+largo))
	cont=$((cont+1))
	done
promedio=$((sum/cont))
echo "La palabra mas larga es $maxpal y tiene $largomax caracteres" 
echo "La palabra mas corta es $minpal y tiene $largomin caracteres"
echo "la longitud promedio es $promedio"
exit 0
