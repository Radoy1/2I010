#! /bin/bash
# lecture2.sh

for i in 1 2 
do
  read a
  echo "a2 : $a"
done < $fic
read b < $fic
echo "b  : $b"
