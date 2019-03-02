#! /bin/bash
# lecture1.sh

fic="$1"
export fic

for i in 1 2 
do
  read a
  echo "a1 : $a"
   ./lecture2.sh
done 
