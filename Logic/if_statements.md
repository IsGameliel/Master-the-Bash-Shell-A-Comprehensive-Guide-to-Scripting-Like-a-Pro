examples of if statements in Bash:

1. Simple if statement:
```
if [ "$var" = "value" ]; then
  echo "The variable is equal to value."
fi
```

2. If-else statement:
```
if [ "$var" = "value" ]; then
  echo "The variable is equal to value."
else
  echo "The variable is not equal to value."
fi
```

3. If-elif-else statement:
```
if [ "$var" = "value1" ]; then
  echo "The variable is equal to value1."
elif [ "$var" = "value2" ]; then
  echo "The variable is equal to value2."
else
  echo "The variable is not equal to value1 or value2."
fi
```

4. Check if a file exists:
```
if [ -e filename ]; then
    echo "File exists"
fi
```

5. Check if a file does not exist:
```
if [ ! -e filename ]; then
    echo "File does not exist"
fi
```

6. Check if a file is readable:
```
if [ -r filename ]; then
    echo "File is readable"
fi
```

7. Check if a file is writable:
```
if [ -w filename ]; then
    echo "File is writable"
fi
```

8. Check if a file is executable:
```
if [ -x filename ]; then
    echo "File is executable"
fi
```

9. Check if a variable is set:
```
if [ -z "$variable" ]; then
    echo "Variable is not set"
fi
```

10. Check if a variable is not set:
```
if [ -n "$variable" ]; then
    echo "Variable is set"
fi
```

11. Check if a string is empty:
```
if [ -z "$string" ]; then
    echo "String is empty"
fi
```

12. Check if a string is not empty:
```
if [ -n "$string" ]; then
    echo "String is not empty"
fi
```

13. Check if two strings are equal:
```
if [ "$string1" = "$string2" ]; then
    echo "Strings are equal"
fi
```

14. Check if two strings are not equal:
```
if [ "$string1" != "$string2" ]; then
    echo "Strings are not equal"
fi
```

15. Check if a number is greater than another number:
```
if [ "$num1" -gt "$num2" ]; then
    echo "$num1 is greater than $num2"
fi
```

16. Check if a number is less than another number:
```
if [ "$num1" -lt "$num2" ]; then
    echo "$num1 is less than $num2"
fi
```

17. Check if a number is equal to another number:
```
if [ "$num1" -eq "$num2" ]; then
    echo "$num1 is equal to $num2"
fi
```

18. Check if a number is not equal to another number:
```
if [ "$num1" -ne "$num2" ]; then
    echo "$num1 is not equal to $num2"
fi
```

19. Check if a command exits with a successful status code:
```
if command; then
    echo "Command was successful"
fi
```

20. Check if a command exits with a non-zero status code:
```
if ! command; then
    echo "Command failed"
fi
```

21. Check if a file is a directory:
```
if [ -d dirname ]; then
    echo "Directory exists"
fi
```

Note: In Bash, if statements are usually written in the following format:

```
if [ condition ]; then
    # Code to execute if condition is true
fi
```
Or, with a one-line syntax:
```
if [ condition ]; then command; fi
```