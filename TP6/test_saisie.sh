#!/bin/bash
./saisie_val.sh
val1=$?

./saisie_val.sh

val2=$?
while [ $val2 -gt $val1 ]
do
    ./saisie_val.sh
    val2=$?
done

echo $val1 $val2
