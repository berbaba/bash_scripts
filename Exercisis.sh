#!/bin/bash

# Exercisi 1
# Llegir valor enter i comprovar rang correcte o missatge error. Per defecte assumir 0.

nota=${1}
if [ ! $nota ]
then
  echo "Cal donar l'argument: Nota del 0 al 10. (Per defecte s'assumeix nota = ${nota:= 0 })"
elif [ ${nota} -gt -1 ]  && [ ${nota} -lt 11 ]
then
  echo "Nota: "$1
else
  echo "Error, nota fora de rang [0-10]:" $1
fi
