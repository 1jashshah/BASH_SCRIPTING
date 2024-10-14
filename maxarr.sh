#!/bin/bash

# Define the array
numbers=(34 72 18 95 66 44)

# Assume the first element is the largest
max=${numbers[0]}

# Loop through the array
for num in "${numbers[@]}"
do
    if [[ $num -gt $max ]]
    then
        max=$num
    fi
done

# Output the maximum number
echo "The maximum number is: $max"

