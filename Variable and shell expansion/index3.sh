
# Assigning the output of a command to a variable

mydate=$(date +%Y-%m-%d)
echo $mydate

# Using the output of a command in a command line argument

ls -l $(find . -type f -mtime -1)

# Using command substitution to create a file with a timestamp

touch myfile_$(date +%Y-%m-%d_%H-%M-%S).txt 