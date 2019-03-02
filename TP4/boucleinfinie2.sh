#! /bin/bash
# boucleinfinie2.sh

echo Je suis le processus $$
trap "echo $$ ignore le signale SIGKILL" SIGKILL

while [ true ]
do
 sleep 60
done
