#! /bin/bash

if [ $# -eq 0 ]
then
    exit 1
fi

m=`./alea.sh`
i=1
echo Je suis le fils $1 et je dois creer $m processus

while [ $i -le $m ]
do
    ./petit_fils.sh "$1.$i"
    i=$(($i+1))
done

exit $m
