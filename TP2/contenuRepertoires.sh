#! /bin/bash
set -u
if [ $# -eq 0 ]
then
  echo Repertoire courant "$(pwd)"
  exit 1
fi

for i in $@
do
  if [ -d $i ]
  then
    echo "$i est un repertoire"
  elif [ -f $i ]
  then
    echo "$i est un fichier"
  else
    echo "$i n'est ni un fichier ni un repertoire"
  fi
done
