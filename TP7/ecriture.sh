#! /bin/bash
# ecriture.sh

if [ $# -lt 1 ]
then
  echo "Il faut au moins un parametre"
  exit 1
fi

for elem in "$@"
do
    lockfile "$elem.lock"
    if [ ! -e "$elem" ]
    then
	echo premier $$ > "$elem"
    else
	echo suivant $$ >> "$elem"
    fi
    rm -f "$elem.lock"
done
