#!/bin/bash

[ $# -le 0 ] && echo No hay argumentos && exit 1
echo La cantidad de lineas en blanco es:
grep -cvP '\S' $1
exit 0
