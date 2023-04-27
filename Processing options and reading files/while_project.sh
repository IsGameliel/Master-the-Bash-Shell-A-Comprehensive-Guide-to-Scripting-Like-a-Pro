#!/bin/bash

number=0

while [ $number -lt 1 ] || [ $number -gt 10 ]
do
    read -p "Enter a number between 1 and 10: " number
done

echo "You entered: $number"
