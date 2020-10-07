#!/bin/bash

# Exercisi 3
# Llegir seqüència de línies entrant per tubería amb cat fitxer
# Dividir línies en paraules i eliminar signes puntuació
# anar emmagatzemant paraules i anar imprimint per eixida
# la quantitat d'ocurrències de cada paraula, ordenades per
# nombre d'ocurrències decrecreixent

#Sugerencia: se sugiere utilizar un vector indexado por cadenas para llevar la cuenta de las ocurrencias de cada palabra.

if [ ! $1 ]
then echo "Cal passar fitxer com a argument"
else
  cat $1 | while read linea
  do
    for paraula in $linea
    do
      echo $paraula
    done
  done | tr ['\.''\,''\-''\:'" "'¡''!''¿''?''('')''\;''\[''\]' [" " |
   tr [A-Z] [a-z] | tr [ÁÉÍÓÚ'\/'] [áéíóú"\\n"] |  sort | uniq -c | sort -nr 
fi
