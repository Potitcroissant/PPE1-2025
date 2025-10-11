#!/usr/bin/bash

if [ -n $1 ]
then
	echo "Nombre de $1 en 2016: "
	cat 2016/* | grep $1 | wc -l
	echo "Nombre de $1 en 2017: "
	cat 2017/* | grep $1 | wc -l
	echo "Nombre de $1 en 2018: "
	cat 2018/* | grep $1 | wc -l
else
	echo "La condition n'est pas valide"
fi
