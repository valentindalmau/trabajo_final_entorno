#!/bin/bash

[ $# -le 0 ] && echo No hay argumentos && exit 1

largo=`echo $@ | tr -cd "\." | wc -c`

ultpal=${@: -1}
ultcar=${ultpal: -1}

[ "$ultcar" == "." ] || largo=$((largo + 1))

for i in $(seq 1 $largo); do
	oracion=`echo $@ | cut -d "." -f $i`
	largoora=`echo $oracion | wc -w`
	largototal=$((largoora + largototal))
	[ $i -eq 1 ] && maxora=$oracion && minora=$oracion && maxlar=$largoora && minlar=$largoora
	[ $largoora -gt $maxlar ] && maxora=$oracion && maxlar=$largoora
	[ $largoora -lt $minlar ] && minora=$oracion && minlar=$largoora
done

promedio=$((largototal/largo))

echo El promedio de palabras por oracion es: $promedio
echo La oracion mas larga es: $maxora y tiene $maxlar palabras
echo La oracion mas corta es: $minora y tiene $minlar palabras

exit 0

