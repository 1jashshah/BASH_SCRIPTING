#!/bin/bash


read -p "Enter the 1st Number" fn
read -p "Enter the 2nd Number" sn
read -p "Enter the Operator" op

case $op in
 +) result=$(( fn + sn ));;
 -) result=$(( fn - sn));;
esac

echo "$result"

