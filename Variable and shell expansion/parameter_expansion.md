## Parameter expansion

Here are some examples of how to use parameter expansion in bash:

1. Default Value: `${parameter:-default}`
```
#!/bin/bash
# Example using default value parameter expansion

echo "The value of \$FOO is ${FOO:-bar}"   # if $FOO is not set or is null, the default value "bar" is used
echo "The value of \$BAZ is ${BAZ:-default}"   # if $BAZ is not set or is null, the default value "default" is used
```

2. Assign Default Value: `${parameter:=default}`
```
#!/bin/bash
# Example using assign default value parameter expansion

echo "The value of \$FOO is ${FOO:=bar}"   # if $FOO is not set or is null, it will be set to "bar"
echo "The value of \$BAZ is ${BAZ:=default}"   # if $BAZ is not set or is null, it will be set to "default"
```

3. Error If Null: `${parameter:?error_message}`
```
#!/bin/bash
# Example using error if null parameter expansion

echo "The value of \$FOO is ${FOO:?FOO is not set or is null}"   # if $FOO is not set or is null, an error message will be displayed and the script will exit
echo "The value of \$BAZ is ${BAZ:?BAZ is not set or is null}"   # if $BAZ is not set or is null, an error message will be displayed and the script will exit
```

4. Remove Smallest Suffix: `${parameter%suffix}`
```
#!/bin/bash
# Example using remove smallest suffix parameter expansion

FOO="hello_world.txt"
echo "The value of \$FOO without the .txt suffix is ${FOO%.txt}"   # removes the smallest ".txt" suffix from the value of $FOO
```

5. Remove Longest Suffix: `${parameter%%suffix}`
```
#!/bin/bash
# Example using remove longest suffix parameter expansion

FOO="hello_world.txt"
echo "The value of \$FOO without the .txt suffix is ${FOO%%.txt}"   # removes the longest ".txt" suffix from the value of $FOO
```

6. Remove Smallest Prefix: `${parameter#prefix}`
```
#!/bin/bash
# Example using remove smallest prefix parameter expansion

FOO="foo_bar_baz"
echo "The value of \$FOO without the 'foo_' prefix is ${FOO#foo_}"   # removes the smallest "foo_" prefix from the value of $FOO
```

7. Remove Longest Prefix: `${parameter##prefix}`
```
#!/bin/bash
# Example using remove longest prefix parameter expansion

FOO="foo_bar_baz"
echo "The value of \$FOO without the 'foo_' prefix is ${FOO##foo_}"   # removes the longest "foo_" prefix from the value of $FOO
```

8. Length: `${#parameter}`
```
#!/bin/bash
# Example using length parameter expansion

FOO="hello"
echo "The length of \$FOO is ${#FOO}"   # expands to the length of the value of $FOO
```

9. Substring: `${parameter:start:length}`
```
#!/bin/bash
# Example using substring parameter expansion

FOO="hello_world"
echo "The substring of \$FOO starting at index 6 with length 5 is ${FOO:6:5}"   # expands to the substring of $FOO starting at index 6 with length

### Quiz

1. What is parameter expansion in Bash?

2. How can you use parameter expansion to get the length of a string variable in Bash?

3. What does ${var:-default} do in Bash parameter expansion?

4. How can you use ${var#pattern} in Bash parameter expansion to remove a prefix from a string?

5. How can you use ${var%pattern} in Bash parameter expansion to remove a suffix from a string?

6. What does ${var/pattern/replacement} do in Bash parameter expansion?

7. What does ${var//pattern/replacement} do in Bash parameter expansion?

8. How can you use ${!prefix*} in Bash parameter expansion to get a list of all variables that start with a certain prefix?

9. What does ${var,,} do in Bash parameter expansion?

10. How can you use ${var##pattern} in Bash parameter expansion to remove a longest prefix from a string?

Answers:

1. Parameter expansion is a way to manipulate and expand the values of variables in Bash by using special characters and syntax.

2. You can use the ${#var} syntax to get the length of a string variable in Bash.

3. ${var:-default} is a syntax in Bash parameter expansion that returns the value of "var" if it is set, otherwise it returns "default".

4. ${var#pattern} is a syntax in Bash parameter expansion that removes the shortest prefix matching "pattern" from the beginning of "var".

5. ${var%pattern} is a syntax in Bash parameter expansion that removes the shortest suffix matching "pattern" from the end of "var".

6. ${var/pattern/replacement} is a syntax in Bash parameter expansion that replaces the first occurrence of "pattern" with "replacement" in "var".

7. ${var//pattern/replacement} is a syntax in Bash parameter expansion that replaces all occurrences of "pattern" with "replacement" in "var".

8. ${!prefix*} is a syntax in Bash parameter expansion that returns a list of all variables that start with "prefix".

9. ${var,,} is a syntax in Bash parameter expansion that converts "var" to lowercase.

10. ${var##pattern} is a syntax in Bash parameter expansion that removes the longest prefix matching "pattern" from the beginning of "var".