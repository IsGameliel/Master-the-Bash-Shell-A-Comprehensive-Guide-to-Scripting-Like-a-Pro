#!/bin/bash

# Check if ShellCheck is installed
if ! command -v shellcheck &> /dev/null; then
    echo "ShellCheck is not installed. Please install it first."
    exit 1
fi

# Set the directory to be checked
directory="./"

# Check all shell scripts in the directory
for file in "$directory"/*.sh; do
    if [[ -f "$file" ]]; then
        echo "Checking $file..."
        shellcheck "$file"
    fi
done