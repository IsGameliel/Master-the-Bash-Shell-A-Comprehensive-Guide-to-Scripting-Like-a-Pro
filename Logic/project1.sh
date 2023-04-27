#!/bin/bash

# Generate a random number between 1 and 10
number=$((RANDOM % 10 + 1))

# Set the number of attempts to 3
attempts=3

# Loop until the user runs out of attempts
while [ $attempts -gt 0 ]
do
  # Ask the user to guess the number
  read -p "Guess the number between 1 and 10: " guess

  # Check if the guess is correct
  if [ $guess -eq $number ]
  then
    echo "Congratulations, you guessed the number!"
    exit 0
  else
    echo "Sorry, try again."
    attempts=$((attempts - 1))
    echo "You have $attempts attempts left."
  fi
done

echo "Sorry, you failed to guess the number. The number was $number."
exit 1
