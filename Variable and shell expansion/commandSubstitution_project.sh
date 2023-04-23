#!/bin/bash

if [ $# -ne 1 ]
then
  echo "Usage: $0 <filename>"
  exit 1
fi

filename=$1
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
backup_filename=${filename%.*}_${timestamp}.${filename##*.}

cp $filename $backup_filename
echo "Backup created: $backup_filename"
