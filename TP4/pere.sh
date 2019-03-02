#! /bin/bash

if [ $# -eq 0 ]
then
    exit 1
fi

i=1
s=$1
while [ $i -le $1 ]
do
    ./fils.sh "$i"
    s=$(($s+$?))
    i=$(($i+1))
done

echo $s processus ont ete cree
