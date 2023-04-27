5 examples of using case statements in bash:

Example 1: Simple case statement to check for user input

```
#!/bin/bash

echo "Please enter a letter: "
read letter

case $letter in
    [Aa])
        echo "The letter is A"
        ;;
    [Bb])
        echo "The letter is B"
        ;;
    *)
        echo "The letter is not A or B"
        ;;
esac
```

In this example, the script prompts the user to enter a letter, then uses a case statement to check if the input is either "A" or "a", "B" or "b", or anything else. Depending on the input, the script prints a corresponding message.

Example 2: Using case statement to check the value of a variable

```
#!/bin/bash

fruit="apple"

case $fruit in
    "apple")
        echo "The fruit is an apple"
        ;;
    "banana")
        echo "The fruit is a banana"
        ;;
    *)
        echo "The fruit is not an apple or a banana"
        ;;
esac
```

In this example, the script uses a case statement to check the value of the variable `$fruit`. Depending on the value, the script prints a corresponding message.

Example 3: Using case statement with multiple patterns

```
#!/bin/bash

color="red"

case $color in
    "red" | "blue" | "green")
        echo "The color is a primary color"
        ;;
    "orange" | "purple" | "pink")
        echo "The color is a secondary color"
        ;;
    *)
        echo "The color is not a primary or secondary color"
        ;;
esac
```

In this example, the script uses a case statement with multiple patterns to check the value of the variable `$color`. Depending on the value, the script prints a corresponding message.

Example 4: Using case statement with regular expressions

```
#!/bin/bash

filename="example.txt"

case $filename in
    *.txt)
        echo "The file is a text file"
        ;;
    *.jpg | *.png)
        echo "The file is an image file"
        ;;
    *)
        echo "The file is not a text or image file"
        ;;
esac
```

In this example, the script uses a case statement with regular expressions to check the value of the variable `$filename`. Depending on the value, the script prints a corresponding message.

Example 5: Using case statement with variables and command substitution

```
#!/bin/bash

result=$(ls -l)

case $result in
    *"hello.txt"*)
        echo "The file hello.txt exists"
        ;;
    *"example.txt"*)
        echo "The file example.txt exists"
        ;;
    *)
        echo "The files hello.txt and example.txt do not exist"
        ;;
esac
```

In this example, the script uses a case statement with variables and command substitution to check the output of the `ls -l` command. Depending on the output, the script prints a corresponding message.