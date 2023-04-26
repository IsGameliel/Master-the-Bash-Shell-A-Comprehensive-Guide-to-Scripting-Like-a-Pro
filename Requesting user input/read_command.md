# Read command



The `read` command in bash is used to take user input and store it in a variable. Here are some examples:

Example 1: Simple Input
```
#!/bin/bash
echo "Enter your name:"
read name
echo "Hello $name, welcome to Bash!"
```

In this example, the `read` command prompts the user to enter their name, and the input is stored in the `name` variable. The `echo` command then displays a welcome message with the entered name.

Example 2: Reading Multiple Inputs
```
#!/bin/bash
echo "Enter your first name:"
read firstName
echo "Enter your last name:"
read lastName
echo "Hello $firstName $lastName, welcome to Bash!"
```

This example prompts the user to enter their first and last name, and the inputs are stored in the `firstName` and `lastName` variables respectively. The `echo` command then displays a welcome message with the entered names.

Example 3: Reading Passwords Securely
```
#!/bin/bash
echo "Enter your password:"
read -s password
echo "Your password is: $password"
```

This example prompts the user to enter their password, and the `-s` option for the `read` command ensures that the input is not displayed on the screen for security reasons. The input is then stored in the `password` variable and displayed on the screen.

Example 4: Reading Input with Timeout
```
#!/bin/bash
echo "You have 5 seconds to enter your name:"
if read -t 5 name; then
    echo "Hello $name, welcome to Bash!"
else
    echo "Timed out!"
fi
```

This example sets a timeout of 5 seconds for the user to enter their name using the `-t` option for the `read` command. If the user enters their name within the timeout period, the `echo` command displays a welcome message with the entered name. If the user doesn't enter their name within the timeout period, the `else` clause is executed and the message "Timed out!" is displayed.