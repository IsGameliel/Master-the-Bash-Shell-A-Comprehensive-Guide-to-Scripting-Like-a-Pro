#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 <input-file> <output-file>"
  exit 1
fi

input_file=$1
output_file=$2

while read line; do
  args=()
  while read -r arg; do
    args+=("$arg")
  done <<< "$line"
  eval "${args[@]}" > "$output_file" 2>&1
  if [ $? -ne 0 ]; then
    echo "Error executing command: $line"
  fi
done < "$input_file"
