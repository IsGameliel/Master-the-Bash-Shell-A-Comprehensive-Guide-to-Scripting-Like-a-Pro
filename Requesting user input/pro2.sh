#!/bin/bash

# check if the script was passed any arguments
if [ $# -eq 0 ]; then
  echo "Error: no arguments passed."
  exit 1
fi


# iterate over each argument and check if the file exists
for file in "$@"; do
  if [ ! -f "$file" ]; then 
    echo "Error: file does not exist."
    continue
  fi
done

# count the number of files passed as arguments
num_files=$#
echo "Number of files: $num_files"

# display the contents of each file
while [ $# -gt 0 ]; do
  cat "$1"

  # check the exit status of the cat command
  if [ $? -ne 0 ]; then
    echo "Error: could not display content of file '$1'."
  fi
  shift
done
  
