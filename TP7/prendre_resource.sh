#!/bin/bash

read a < $1
while [ ! "$a" -ge 1 ] ;
do
    sleep 1
    read a < $1
done
echo $(($a - 1 )) > $1
