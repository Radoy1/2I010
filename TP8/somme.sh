#!/bin/bash

while [ ! -f saisie.sync ]
do
    sleep 1
done

if [ $# -ne 1 ]
then
    echo Un seul parametre demande
    exit 1
fi

if [ ! -f $1 ]
then
    echo $1 n\'est pas un fichier
    exit 1
fi

i=0
somme=0
while read a
do
    if [ $a -lt 0 ]
    then
	break
    fi
    somme=$((somme+a))
    let i++
done < "$1"

echo $i $somme > "$1"

rm saisie.sync
touch somme.sync
