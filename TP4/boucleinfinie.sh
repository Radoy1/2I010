#! /bin/bash
# boucleinfinie.sh

echo "Je suis le processus $$"
trap "echo $$ ignore le signale SIGINT" SIGINT

i=0
while [ true ]
do
 echo $i
 i=$(($i + 1))
 sleep 1
done
