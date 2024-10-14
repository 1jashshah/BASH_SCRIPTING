#!/bin/bash

# Define an array of numbers
numbers=(34 78 23 56 89 12 67 45)

# Find the maximum number using a simple loop
max_number=${numbers[0]}

for number in "${numbers[@]}"; do
  (( number > max_number )) && max_number=$number
done

# Output the maximum number
echo "The maximum number is: $max_number"

