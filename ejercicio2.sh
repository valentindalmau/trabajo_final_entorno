#!/bin/bash

[ $# -le 0 ] && echo No hay palabras && exit 1
declare -A dict

input=`echo "$@" | awk '{print tolower($0)}'`
echo $input
for palabra in $input; do
	[[ $palabra =~ [^a-zA-Z] ]] && continue
	largo=`echo $palabra | awk '{print length}'`
	[ $largo -lt 4 ] && continue
	dict[$palabra]=$((${dict[$palabra]} + 1))
done

echo El top 10 de palabras mas usadas es:

for palabra in ${!dict[@]}; do
       echo $palabra ' - ' ${dict[$palabra]}
done | sort -rn -k3 | head -n 10

exit 0
