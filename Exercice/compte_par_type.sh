#!/usr/bin/bash

if [ -d $1 ] && [ -n $2 ]
then
	cat $1/* | grep $2 | wc -l
else
	echo "La condition n'est pas valide"
fi
