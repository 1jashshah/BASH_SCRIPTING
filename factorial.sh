#!/bin/bash


read -p "Enter the number you wanna factorial till " num

fact=1


for ((i=2;i<=num;i++))
do
   fact=$(( fact * i ))
done

  echo $fact
