#! /bin/bash
# script guillemets.sh
# permet de faire la difference entre l'utilisation des " et celle des '
# prend deux parametres

if [ $# -ne 2 ]
then
  echo il faut deux parametres
  exit 1
fi

var1='$1 $2'
var2="$1 $2"
var3="$1 '$2'"
var4='$(ls)'
var5="$(ls)"

echo var avec apostrophes = $var1
echo var avec guillemets = $var2
echo var avec guillemets affichee avec apostrophes = '$var2'
echo var avec guillemets et apostrophes = $var3
echo ls avec apostrophes = $var4
echo ls avec guillemets = $var5
