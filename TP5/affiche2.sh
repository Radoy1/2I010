#! /bin/bash
# affiche2.sh

if [ $# -ne 1 ]
then
  echo "Il faut un parametre : un entier"
  exit 1
fi

i=0
while [ $i -lt $1 ]
do
  echo -n $$ : 
  echo $i
  i=$(($i + 1))
done
