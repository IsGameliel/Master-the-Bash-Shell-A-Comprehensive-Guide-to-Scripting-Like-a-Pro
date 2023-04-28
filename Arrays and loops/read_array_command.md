

The `read` command is a built-in command in bash that allows users to read input from standard input (stdin) or a file and assign it to a variable. Here are six examples of using the `read` command in bash:

1. Reading a single value from standard input:

```bash
echo "What is your name?"
read name
echo "Hello, $name!"
```

In this example, the user is prompted to enter their name. The `read` command reads the input from the user and assigns it to the variable `$name`. The variable is then used in the next line to print a personalized greeting.

2. Reading multiple values from standard input:

```bash
echo "Enter your first and last name:"
read first last
echo "Hello, $first $last!"
```

This example prompts the user to enter their first and last name. The `read` command reads both values separated by a space and assigns them to the variables `$first` and `$last`. The variables are then used to print a personalized greeting.

3. Reading a value with a prompt on the same line:

```bash
read -p "What is your age? " age
echo "You are $age years old."
```

This example uses the `-p` option to display a prompt on the same line as the input. The user is prompted to enter their age, and the `read` command reads the input and assigns it to the variable `$age`. The variable is then used to print a message.

4. Reading a value with a timeout:

```bash
read -t 5 -p "Enter your password in 5 seconds: " password
```

This example uses the `-t` option to set a timeout of 5 seconds. The user is prompted to enter their password, and the `read` command reads the input and assigns it to the variable `$password`. If the user does not enter input within 5 seconds, the command exits with an error.

5. Reading a value from a file:

```bash
read line < file.txt
echo "The first line of file.txt is: $line"
```

This example uses input redirection to read the first line of a file named `file.txt`. The `read` command reads the line and assigns it to the variable `$line`. The variable is then used to print a message.

6. Reading a value with a default:

```bash
read -e -i "default value" variable
echo "You entered: $variable"
```

This example uses the `-e` and `-i` options to set a default value for the input. If the user does not enter anything, the default value is used. The `read` command reads the input and assigns it to the variable `$variable`. The variable is then used to print a message.