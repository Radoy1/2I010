#! /bin/bash
# saisie.sh

n=-1
while [ "$n" -lt 0 ] || [ "$n" -gt 10 ]
do
  echo "Saisissez une valeur entre 0 et 10"
  read n
done

if [ "$n" -lt 7 ]
then
  echo $n
else
  echo Pas de valeur
fi


