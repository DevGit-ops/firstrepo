#!/bin/bash

# Script to swap two numbers

# Read two numbers from the user
echo "Enter first number (a):"
read a
echo "Enter second number (b):"
read b

echo "Before swapping: a = $a, b = $b"

# Swapping using a temporary variable
temp=$a
a=$b
b=$temp

echo "After swapping: a = $a, b = $b"

