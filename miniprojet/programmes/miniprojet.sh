#!/usr/bin/env bash

if [ $# -ne 1 ]
then
	echo "Ce programme demande un seul argument"
    exit 1
fi

URLS=$1
lineno=1

OUTPUT="./tableaux/tableau-fr.html"

{
echo -e "<!DOCTYPE html>
        <html lang=\"fr\">
            <head>
                <meta charset=\"UTF-8\"/>
                <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@1.0.4/css/bulma.min.css\" />
                <title>Tableau</title>
            </head>

            <body>
                <div class=\"content has-text-inherit\">
                    <h2 class=\"title is-2 has-background-primary pl-5 py-5\">Tableau récapitulatif</h2>
                    <table class=\"table is-bordered is-hoverable m-6\">
                        <thead class=\"has-background-warning\">
                            <tr>
                                <th>N°</th>
                                <th>URL</th>
                                <th>Code</th>
                                <th>Mots</th>
                                <th>Encodage</th>
                            </tr>
                        </thead>"

while read -r line;
do
    code_HTTP=$(curl -i -s ${line} | grep "HTTP/2" | cut -f 2 -d " ")
    encodage=$(curl -is ${line} | grep "charset" | cut -f 3 -d " ")
    mots=$(lynx -dump -nolist ${line} | wc -w)
    
	echo -e "<tbody>
                <tr>
                    <td>${lineno}</td>
                    <td>${line}</td>
                    <td>${code_HTTP}</td>
                    <td>${mots}</td>
                    <td>${encodage}</td>
                </tr>
            </tbody>"
	lineno=$(expr $lineno + 1)
done < $URLS

echo -e "</table>
        </div>
    </body>
</html>"

} > "$OUTPUT"
