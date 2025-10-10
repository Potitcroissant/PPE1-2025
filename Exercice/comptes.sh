echo "Nombre de lieux en 2016:"
cat 2016/* | grep Location | wc -l
echo "Nombre de personnes en 2016:"
cat 2016/* | grep Person | wc -l
echo "Nombre d'orgaisations en 2016:"
cat 2016/* | grep Organization | wc -l
echo "Nombre de produits en 2016:"
cat 2016/* | grep Product | wc -l
echo "Nombre de dates en 2016:"
cat 2016/* | grep Date | wc -l
echo "Nombre d'heures en 2016:"
cat 2016/* | grep Hour | wc -l
echo "Nombre d'évènements en 2016:"
cat 2016/* | grep Event | wc -l
