#! /bin/bash
i=1
j=$1
export i
export j
while [ $i -le $j ]
do
    ./fils.sh
    i=$(($i+1))
done
