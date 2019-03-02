#! /bin/bash
set -u

if [ $# -ne 1 ];
then
  echo Il faut un et un seul fichier
  exit 1
fi

if [ -f $1 ];
then
  for i in $(cat $1)
  do
    if [ -d $i ];
    then
      echo $i existe deja
    else
      $(mkdir $i) 
      echo dossier $i créé
    fi
  done
fi
