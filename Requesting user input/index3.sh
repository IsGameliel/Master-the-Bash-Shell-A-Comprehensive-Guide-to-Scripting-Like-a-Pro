#!/bin/bash

# echo "Enter you name: "
# read name
# echo "Hello $name, welcome to school of programming."

# echo "Enter your first name: "
# read firstname
# echo "Enter your last name: "
# read lastname
# echo "Hello $firstname $lastname, welcome to school of programing"

# echo "Enter your password:"
# read -s password
# echo "Your password is: $password"

echo "You have 5 seconds to enter your name:"
if read -t 5 name; then
    echo "Hello $name, welcome to school of programing"
else
    echo "Time out!"
fi