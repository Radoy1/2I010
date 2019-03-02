#!/bin/bash

entier=0

while [ $entier -le $1 ]
do
    echo $entier
    entier=`./add $entier 1`
done

