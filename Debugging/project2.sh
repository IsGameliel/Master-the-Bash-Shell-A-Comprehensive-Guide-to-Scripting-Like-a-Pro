#!/bin/bash

# Prompt user to enter filename or directory
echo "Enter filename or directory to check:"
read file_or_dir

# Check if input is a directory or file
if [ -d "$file_or_dir" ]; then
  # If input is a directory, check all Bash scripts in the directory
  for file in "$file_or_dir"/*.sh; do
    if [ -f "$file" ]; then
      echo "Checking file: $file"
      shellcheck "$file"
    fi
  done
elif [ -f "$file_or_dir" ]; then
  # If input is a file, check that file
  echo "Checking file: $file_or_dir"
  shellcheck "$file_or_dir"
else
  echo "Invalid input: $file_or_dir is not a valid file or directory."
fi
