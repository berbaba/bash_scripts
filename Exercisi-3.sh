#!/bin/bash

# Exercisi 3
# Llegir seqüència de línies entrant per tubería amb cat fitxer
# Dividir línies en paraules i eliminar signes puntuació
# anar emmagatzemant paraules i anar imprimint per eixida
# la quantitat d'ocurrències de cada paraula, ordenades per
# nombre d'ocurrències decrecreixent

if [ ! $1 ]
then echo "Cal passar fitxer com a argument"
else
  head -10 $1 | while read linea
  do
    for paraula in $linea
    do
      echo $paraula
    done
  done
fi
