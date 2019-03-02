#!/bin/bash

if [ $# -lt 2 ]
then
    echo Un seul parametre demande
    exit 1
fi

if [ -d $1 ]
then
    echo $1 n\'est pas un fichier
    exit 1
fi
touch lecture.sync
FICHIER="$1"
shift
for a in $@
do
    if [ -f lecture.sync ]
    then
	echo $a > "$FICHIER"
	touch ecriture.sync
	rm lecture.sync
	sleep 1
    fi
done
