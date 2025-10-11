#!/usr/bin/bash

if [ -d $1 ] && [ -n $2 ] && [ $3 -gt 0 ]
then
	cat $1/$1_$2*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -n | tail -n $3
else
	echo "La condition n'est pas bonne"
fi
