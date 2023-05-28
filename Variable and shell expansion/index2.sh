#!/bin/bash
# Example using default value parameter expansion

# echo "The value of \$FOO is ${FOO:-bar}"   # if $FOO is not set or is null, the default value "bar" is used
# echo "The value of \$BAZ is ${BAZ:-default}"   # if $BAZ is not set or is null, the default value "default" is used

# Assign Default Value
# Example using assign default value parameter expansion

# echo "The value of \$FOO is ${FOO:=bar}"   # if $FOO is not set or is null, it will be set to "bar"
# echo "The value of \$BAZ is ${BAZ:=default}"   # if $BAZ is not set or is null, it will be set to "default"

# Error If Null
# Example using error if null parameter expansion

# echo "The value of \$FOO is ${FOO:?FOO is not set or is null}"   # if $FOO is not set or is null, an error message will be displayed and the script will exit
# echo "The value of \$BAZ is ${BAZ:?BAZ is not set or is null}"   # if $BAZ is not set or is null, an error message will be displayed and the script will exit

# Remove Smallest Suffix: 
# Example using remove smallest suffix parameter expansion

# FOO="hello_world.txt"
# echo "The value of \$FOO without the .txt suffix is ${FOO%.txt}"   # removes the smallest ".txt" suffix from the value of $FOO

# Remove Longest Suffix:
# Example using remove longest suffix parameter expansion

# FOO="hello_world.txt"
# echo "The value of \$FOO without the .txt suffix is ${FOO%%.txt}"   # removes the longest ".txt" suffix from the value of $FOO