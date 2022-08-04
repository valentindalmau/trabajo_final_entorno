#!/bin/bash

PS3="Seleccionar un número: "

string=$(cat ./prueba.txt)
ban=true
while $ban; do
        select opcion in "Indicador de longitud de palabras" "Indicador de uso de palabras" "Detector de nombres propios" "Indicador de longitud de oraciones" "Contador de lineas en blanco" "Salir"
	do
		case $opcion in
		"Indicador de longitud de palabras")
			./ejercicio1.sh $string
			break;;
		"Indicador de uso de palabras")
			./ejercicio2.sh $string
			break;;
		"Detector de nombres propios")
			./ejercicio3.sh $string
			break;;
		"Indicador de longitud de oraciones")
			./ejercicio4.sh $string
			break;;
		"Contador de lineas en blanco")
			./ejercicio5.sh ./prueba.txt
			break;;
		"Salir")
			ban=false
			break;;
		*)
			echo Opcion incorrecta
			break;;
		esac
	done
done
