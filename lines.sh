#!/bin/bash

read -p "How many lines of /etc/passwd you wanna to print" line

N=1
while read LINE

do
   echo "${N} :  $LINE"
   ((N++))
done < /etc/passwd | head -${NUM}
