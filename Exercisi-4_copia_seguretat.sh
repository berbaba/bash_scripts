#!/bin/bash

# Add description

if ( ! /tmp/tmp_home 2> /dev/null )
then
  echo "no existeix"
fi
declare -a v
i=0
ls $HOME | while read line
do
  for item in line
    do
      v[$i]=$line
      echo ${v[$i]}
      let i=${i}+1
  done
done
echo ${v[5]}
