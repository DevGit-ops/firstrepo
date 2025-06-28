#!/bin/bash

# Script to check if a number is a palindrome

echo "Enter a number:"
read num

# Check if input is a valid integer
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a non-negative integer."
    exit 1
fi

# Store original number for comparison
original=$num
reverse=0

# Reverse the number
while [ $num -gt 0 ]
do
    digit=$((num % 10))              # Get last digit
    reverse=$((reverse * 10 + digit)) # Append digit to reversed number
    num=$((num / 10))                 # Remove last digit
done

# Check if original and reversed numbers are the same
if [ "$original" -eq "$reverse" ]; then
    echo "$original is a palindrome."
else
    echo "$original is not a palindrome."
fi

