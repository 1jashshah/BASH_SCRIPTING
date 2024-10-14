#!/bin/bash


nums=(1,2,3,55,556)


max=${nums[0]}

for num in ${nums[@]}
do
  if [[ $num -gt $max]]
  then
  max=$num

 fi
done
