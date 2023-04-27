#!/bin/bash

count=0

for file in *
do
  if [ -f "$file" ]
  then
    count=$((count+1))
  fi
done

echo "There are $count files in this directory."
