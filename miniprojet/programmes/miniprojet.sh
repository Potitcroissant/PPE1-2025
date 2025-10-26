if [ $# -ne 1 ]
then
	echo "Ce programme demande un seul argument"
		exit
fi

URLS=$1
x=1

while read -r line;
do
    code_HTTP=$(curl -i -s ${line} | grep "HTTP/2" | cut -f 2 -d " ")
    encodage=$(curl -is ${line} | grep "charset" | cut -f 3 -d " ")
    mots=$(lynx -dump -nolist ${line} | wc -w)
    
	echo -e "${x}\t${line} \t${code_HTTP}\t${mots}\t${encodage}";
	x=$(expr $x + 1)
done < $URLS;
