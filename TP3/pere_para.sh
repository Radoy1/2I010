#! /bin/bash
i=1
while [ $i -le $1 ]
do
    ./fils_para.sh $i $1
    i=$(($i+1))
done
