#!/bin/bash

# Project: Number Guessing Game

# Generate a random number between 1 and 100
target=$((RANDOM % 100 + 1))

echo "Welcome to the Number Guessing Game!"
echo "I have chosen a number between 1 and 100."
echo "Can you guess the number?"

# Initialize the user's guess and the number of attempts
guess=0
attempts=0

# Start the game loop
while [[ $guess -ne $target ]]; do
  # Read the user's input
  read -p "Enter your guess: " guess

  # Increment the number of attempts
  ((attempts++))

  # Check if the guess is too high, too low, or correct
  if [[ $guess -gt $target ]]; then
    echo "Too high!"
  elif [[ $guess -lt $target ]]; then
    echo "Too low!"
  else
    echo "Congratulations! You guessed the number in $attempts attempts."
  fi
done
