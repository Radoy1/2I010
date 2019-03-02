#! /bin/bash
# calcul.sh

if [ $# -ne 3 ]
then
  echo "Il faut trois parametres"
  exit 1
fi

if [ "$2" != "+" ] && [ "$2" != "-" ]
then
  echo "l'operateur doit etre + ou -"
  exit 2
fi

expr $1 $2 $3


