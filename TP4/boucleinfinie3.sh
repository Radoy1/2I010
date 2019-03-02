#! /bin/bash
# boucleinfinie3.sh

echo Je suis le processus $$

trap "echo $$ recoit le signale SIGINT;exit 1" SIGINT

while [ true ]
do    
    sleep 1
done
