#!/bin/bash


read -p "Enter the number" number

if [ $number -lt 0 ];then
  echo "It is negative number"
elif [ $number -gt 0 ];then
   echo "IT is positive "
else [ $number == 0 ]
   echo "number is 0"
fi
