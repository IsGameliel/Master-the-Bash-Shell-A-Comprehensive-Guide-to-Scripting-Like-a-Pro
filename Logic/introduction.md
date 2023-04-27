## Logic in bash



Bash is a command-line shell and scripting language used in Unix-based operating systems like Linux and macOS. Bash supports a wide range of logic operations that allow you to test conditions and control the flow of your script.

Here are some of the logical operators and constructs available in bash:

1. if-then-else statements: These are used to test a condition and execute different blocks of code depending on whether the condition is true or false. The syntax is:

```
if [ condition ]; then
   # code to execute if condition is true
else
   # code to execute if condition is false
fi
```

2. Comparison operators: These are used to test the relationship between two values. Here are some examples:

```
- eq: equals
- ne: not equals
- gt: greater than
- ge: greater than or equal to
- lt: less than
- le: less than or equal to
```

Here's an example of an if-then statement using a comparison operator:

```
if [ "$a" -gt "$b" ]; then
   echo "$a is greater than $b"
else
   echo "$b is greater than $a"
fi
```

3. Boolean operators: These are used to combine multiple conditions. Here are some examples:

```
- &&: logical and
- ||: logical or
- !: logical not
```

Here's an example of an if-then statement using boolean operators:

```
if [ "$a" -gt "$b" ] && [ "$a" -gt "$c" ]; then
   echo "$a is the largest"
elif [ "$b" -gt "$a" ] && [ "$b" -gt "$c" ]; then
   echo "$b is the largest"
else
   echo "$c is the largest"
fi
```

4. Case statements: These are used to test a variable against multiple possible values. The syntax is:

```
case $variable in
   value1)
      # code to execute if variable equals value1
      ;;
   value2)
      # code to execute if variable equals value2
      ;;
   *)
      # code to execute if variable doesn't equal any of the above
      ;;
esac
```

Here's an example of a case statement:

```
case $fruit in
   apple)
      echo "Red"
      ;;
   banana)
      echo "Yellow"
      ;;
   *)
      echo "Unknown color"
      ;;
esac
```

These are just some of the logical constructs and operators available in bash. Bash also supports loops, functions, and many other programming constructs.