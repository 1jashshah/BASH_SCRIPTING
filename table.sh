#!/bin/bash

read -p "Enter the number" num

for i in {1..10}
do
  echo "$num x $i = $(( $i * $num ))"
done
