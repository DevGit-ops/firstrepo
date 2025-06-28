#!/bin/bash

# Script to calculate power of a number using loop

echo "Enter the base:"
read base

echo "Enter the exponent:"
read exponent

# Validate that exponent is a non-negative integer
if ! [[ "$exponent" =~ ^[0-9]+$ ]]; then
    echo "Exponent must be a non-negative integer."
    exit 1
fi

result=1

for (( i=1; i<=exponent; i++ ))
do
    result=$((result * base))
done

echo "$base raised to the power of $exponent is: $result"

