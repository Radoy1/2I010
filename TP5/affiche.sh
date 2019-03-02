#! /bin/bash
# affiche.sh

if [ $# -ne 1 ]
then
  echo "Il faut un parametre : un entier"
  exit 1
fi

i=0
while [ $i -lt $1 ]
do
  echo "$$ : $i"
  i=$(($i + 1))
done
