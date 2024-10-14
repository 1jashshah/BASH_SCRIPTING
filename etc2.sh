#!/bin/bash

NUM=1

while read LINE
do
  echo "${NUM}: $LINE"
  ((NUM++))
done < /etc/group



NUm=1

while read LINE
do
   echo "${Num}: $LINE"
   ((NUM++))
done < /etc/passwd
