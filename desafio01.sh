#!/bin/bash
#############################################

echo "Content-type: text/html"
echo ""

echo '<!DOCTYPE html>'

echo '<html lang="pt-br">'
echo    "<head>"
echo        '<meta charset="utf-8">'
echo        "<title>Desafio Jack 01</title>"

echo    "</head>"
echo    "<body>"
echo        "<div>"
echo            "<h1>Desafio jack - Somar dois numeros</h1>"
echo            "<form action=\"${SCRIPT}\" method=GET>"
echo                "<table >"
echo                    "<tr>"
echo                        "<td><h4>Primeiro valor:</h4></td>"
echo                        '<td><input type="text" name="num1"></td>'
echo                    "</tr>"
echo                    "<tr>"
echo                        "<td><h4>Segundo valor:</h4></td>"
echo                        '<td><input type="text" name="num2" value=""></td>'
echo                    "</tr>"
echo                "</table>"
echo                '<br><h4><input type="submit" value="Resultado"></h4><br>'

numero1=`echo "$QUERY_STRING" | sed -n 's/^.*num1=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
numero2=`echo "$QUERY_STRING" | sed -n 's/^.*num2=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`

soma=$(($numero1+$numero2))

if [[ $soma ]]; then   

echo "<h4> $numero1 + $numero2 =  $soma </h4>"
echo $soma

fi

echo            "</form>"
echo        "</div>"
echo    "</body>"
echo "</html>"
