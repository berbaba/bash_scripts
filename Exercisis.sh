#!/bin/bash

# Exercisi 1
# Llegir valor enter i comprovar rang correcte o missatge error. Per defecte assumir 0.

if [ ! $1 ]
then
  echo "Cal donar l'argument: Nota del 0 al 10. Per defecte s'assumeix 0"
  # UTILITZAR EXPANSIÓ DE VARIABLES
  echo "Nota: " $1
elif [ $1 -gt -1 ]  && [ $1 -lt 11 ]
then
  echo "Nota: "$1
else
  echo "Error, nota fora de rang [0-10]:" $1
fi
