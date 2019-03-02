#! /bin/bash
# boucleinfinie3.sh

echo Je suis le processus $$

trap "echo $$ recoit le signale SIGINT;exit 1" SIGINT
trap "echo $$ recoit le signale SIGQUIT;exit 1" SIGQUIT
trap "echo $$ recoit le signale SIGTERM;exit 1" SIGTERM


while [ true ]
do    
    sleep 1
done
