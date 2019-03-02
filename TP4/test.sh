#! /bin/bash

./repertoire.sh $@
rep=$?

if [ $rep -eq 0 ]
then
    echo Tous les parametres sont des repertoires
else
    echo "$rep  parametres ne correspondent pas a un repertoire"
fi
