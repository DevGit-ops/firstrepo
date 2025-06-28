#!/bin/bash

# Script to check whether a character is a vowel or consonant

echo "Enter a single alphabet character:"
read char

# Convert to lowercase for case-insensitive comparison
char=$(echo "$char" | tr 'A-Z' 'a-z')

# Check if input is a single alphabet character
if [[ ! $char =~ ^[a-zA-Z]$ ]]; then
    echo "Invalid input. Please enter a single alphabet letter."
    exit 1
fi

# Check for vowel
case $char in
    a|e|i|o|u)
        echo "$char is a vowel."
        ;;
    *)
        echo "$char is a consonant."
        ;;
esac

