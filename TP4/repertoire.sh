#! /bin/bash
# repertoire.sh
somme=0
for rep in "$@"; do if [ ! -d "$rep" ]; then
			somme=$(($somme+1))
		    fi
done
exit $somme
