#!/bin/bash

if [ $# -ne 1 ]
then
    echo Un seul parametre demande
    exit 1
fi

if [ -d $1 ]
then
    echo $1 n\'est pas un fichier
    exit 1
fi

while read a
do
    echo $a >> $1
    if [ $a -lt 0 ]
    then
	touch saisie.sync
	exit 1
    fi
done


