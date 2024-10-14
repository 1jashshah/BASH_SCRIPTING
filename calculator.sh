#!/bin/bash


while true
do

read -p "Enter the First Number" FN
read -p "Enter the SEcond Number" SN
read -p "Enter the operator" OP

case $OP in

 +) result=$(( FN + SN ));;
 -) result=$(( FN - SN ));;
 *) echo "INVALID"
esac

echo "$result "
done
