#!/bin/bash

# Exercisi 1
# Llegir valor enter i comprovar rang correcte o missatge error. Per defecte assumir 0.

nota=${1}
if [ ! $nota ]
then
  echo "Cal donar l'argument: Nota del 0 al 10. (Per defecte s'assumeix nota = ${nota:= 0 })"  # Si argument buit, nota ara és 0
elif [ ${nota} -gt -1 ]  && [ ${nota} -lt 11 ]
then
  echo "Nota: "$1
else
  echo "Error, nota fora de rang [0-10]:" $1
fi

# Exercisi 2
# Retornar la nota equivalent en format text

case $nota in
  [0-3]) echo "Molt suspés" ;;                  # Es poden gastar expressions regulars per a cada cas
  4    ) echo "Insuficient" ;;
  5    ) echo "Suficient"   ;;
  6    ) echo "Bé"          ;;
  [7-8]) echo "Notable"     ;;
  9    ) echo "Excel·lent"  ;;
  10   ) echo "Matrícula d'honor";;
  *    ) # (executa quan qualsevol altra opció)
esac
