#!/bin/bash

# Imprimir llistat usuaris amb processos en execució i num processos
# Suma del consum actual de CPU i memòria (en %)

# • Cantidad de procesos “bash” en ejecución:
# $ ps aux | grep “bash” | grep -v “grep” | wc –l


tot_proc=`ps aux | wc -l`  # Total procesess
# tot_proc=$(ps aux | wc -l) # Same as open accent (inverse quotation marks)
echo "Processos totals: "$tot_proc

usu=`ps aux | cut -f 1 -d " " | sort | uniq`  # All process users
echo "Usuaris: " $usu

# for us in $usu
# do
#   echo $us
# done

# col 3 cpu, col 4 mem
ps -eo euser,pcpu
