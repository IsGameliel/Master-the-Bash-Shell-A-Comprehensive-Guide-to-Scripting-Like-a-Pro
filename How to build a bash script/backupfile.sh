#!/bin/bash

# Specify the source and destination directories
source_dir="/home/gameliel/Desktop/code with ibiso/Bash/How to build a bash script/"
dest_dir="/home/gameliel/Desktop/code with ibiso/Bash/How to build a bash script/test_file"

# Create the destination directory if it doesn't exist
if [ ! -d "$dest_dir" ]; then
    mkdir -p "$dest_dir"
fi

# Backup files with current date and time
backup_file="backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"

# Create the backup archive
tar -czf "$dest_dir/$backup_file" "$source_dir"

# Print a success message
echo "Backup successful: $dest_dir/$backup_file"