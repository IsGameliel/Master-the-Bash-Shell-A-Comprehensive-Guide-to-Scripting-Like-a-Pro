#!/bin/bash

echo "Enter a number:"
read number
first_value=0
sum=0
first_value=$((first_value + number))
echo "Enter another number (or press Ctrl+D to exit):"
read number2
sum=$((first_value + number2))
echo "The sum of the numbers is: $sum"