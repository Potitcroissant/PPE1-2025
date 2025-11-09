if [ $# -ne 1 ]
then
	echo "Ce programme demande un seul argument"
		exit
fi

URLS=$1
x=1

OUTPUT="./tableaux/tableau-fr.html"

{
echo "<!DOCTYPE html><html lang=\"fr\"><head><meta charset=\"UTF-8\"/><title>Tableau</title></head><style>table, th, td{border: 1px solid black;border-collapse: collapse;}</style><body><h2>Tableau récapitulatif</h2><table><tr><th>N°</th><th>URL</th><th>Code</th><th>Mots</th><th>Encodage</></tr>"

while read -r line;
do
    code_HTTP=$(curl -i -s ${line} | grep "HTTP/2" | cut -f 2 -d " ")
    encodage=$(curl -is ${line} | grep "charset" | cut -f 3 -d " ")
    mots=$(lynx -dump -nolist ${line} | wc -w)
    
	echo "<tr><td>${x}</td><td>${line}</td><td>${code_HTTP}</td><td>${mots}</td><td>${encodage}</td></tr>"
	x=$(expr $x + 1)
done < $URLS

echo "</table></body></html>"
} > "$OUTPUT"
