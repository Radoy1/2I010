#!/bin/bash

echo 5 > /tmp/3521415/nb_paniers
echo 3 > /tmp/3521415/nb_cabines

for i in 1 2 3 4 5 6 7; do

    ./usager.sh &
done
wait
