#! /bin/bash
# ecriture.sh

echo $$ >> fic_id

if [ $# -lt 1 ]
then
    echo "Il faut au moins un parametre"
    exit 1
fi

for elem in "$@"
do
    while read i 
    do
	if [ $i -ne $$ ]
	then
	   kill -19 $i 2> /dev/null
	fi
    done < fic_id
    
    if [ ! -e "$elem" ]
    then
	sleep 5
	echo premier $$ > "$elem"
    else
	echo suivant $$ >> "$elem"
    fi
    
    while read i 
    do
	if [ $i -ne $$ ]
	then
	   kill -18 $i 2> /dev/null
	fi
    done < fic_id
done
