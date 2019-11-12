#!/bin/bash

if [ $# -ne 2 ] ; then
	echo -e "\nUso:\t$0 INICIO FINAL\n"
	echo -e "Necessário passar os parametros para geracao de numeros da mega-sena"
	exit 1
fi

DIFF=$(($2-$1+1))
RANDOM=$$

for i in `seq 6`
	do
		R=$(($(($RANDOM%$DIFF))+$1))
		echo $R
done
