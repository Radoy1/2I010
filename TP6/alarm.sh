#!/bin/bash

PID=$1
NB=$2
DELAY=$3

for i in $NB
do
    kill -14 $PID
    sleep $DELAY
done
