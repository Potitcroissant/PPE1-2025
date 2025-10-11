for ANNEE in 2016 2017 2018
do
	echo "Nombre de lieux en $ANNEE:"
	cat $ANNEE/* | grep Location | wc -l
done
