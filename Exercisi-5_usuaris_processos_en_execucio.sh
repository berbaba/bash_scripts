#!/bin/bash

# Imprimir llistat usuaris amb processos en execució i num processos
# Suma del consum actual de CPU i memòria (en %)

# Sugerencias: Se sugiere utilizar la orden ps para averiguar la
# información de base. Utilice la orden “bc” para sumar los
# consumos de CPU y memoria, ya que son números reales

tot_proc=`ps aux | wc -l`  # Total procesess
# tot_proc=$(ps aux | wc -l) # Same as open accent (inverse quotation marks)
echo "Processos totals: "$tot_proc

usu=`ps aux | cut -f 1 -d " " | sort | uniq`  # All process users
echo "Usuaris: " $usu

y=0
# euser
# col 3 cpu, col 4 mem
ps -eo "pcpu,start_time" | grep ":" | cut -c -4 | while read line; do
  # echo $line
  y=$(echo "$line + $y" | bc)
  echo $y a
done
echo $y b


# dubte

  # • Cantidad de procesos “bash” en ejecución:
  # $ ps aux | grep “bash” | grep -v “grep” | wc –l
