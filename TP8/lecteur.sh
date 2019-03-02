#!/bin/bash

while [ ! -f ecriture.sync ]
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
    echo $1 n\'est pas un fichier2
    exit 1
fi

while read a < $1
do
    if [ -f ecriture.sync ]
    then
	echo mot lu : $a
	touch lecture.sync
	rm ecriture.sync
    fi
    sleep 1
done
