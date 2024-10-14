#!/bin/bash

# Prompt user to enter the starting line number
read -p "Enter the starting line number: " NUM

while read LINE
do
   echo "${NUM}: $LINE"
   ((NUM++))
done < /etc/group

