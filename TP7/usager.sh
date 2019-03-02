#!/bin/bash

echo Arrivee de l\'usager $$

source ./prendre_resource.sh /tmp/3521415/nb_cabines
source ./prendre_resource.sh /tmp/3521415/nb_paniers
source ./rendre_resource.sh /tmp/3521415/nb_cabines

echo Usager $$ se baigne

sleep 3
source ./prendre_resource.sh /tmp/3521415/nb_cabines
source ./rendre_resource.sh /tmp/3521415/nb_paniers
source ./rendre_resource.sh /tmp/3521415/nb_cabines


echo Fin de $$
