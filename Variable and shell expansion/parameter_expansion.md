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

```

1. What is the syntax for parameter expansion in Bash?<br>
B) $<br>
A) %<br>
C) *<br>
D) #<br>

Annswer: B

2. Which option is used for expanding the length of a string?<br>
A) :p<br>
B) :u<br>
C) :l<br>
D) :q<br>

Answer: A

3. What does the option :+ do in parameter expansion?<br>
A) It expands to a default value if the parameter is unset or null.<br>
B) It expands to the length of the parameter value.<br>
C) It expands to nothing if the parameter is unset or null.<br>
D) It expands to the parameter value with any leading zeros removed.<br>

Answer: A

4. Which option is used for removing a pattern from the beginning of a parameter value?<br>
A) /#<br>
B) /%<br>
C) #/<br>
D) %/<br>

Answer: A

5. What does the option :- do in parameter expansion?<br>
A) It expands to the value of the parameter if it is set and not null.<br>
B) It expands to a default value if the parameter is unset or null.<br>
C) It expands to nothing if the parameter is unset or null.<br>
D) It expands to the parameter value with any leading zeros removed.<br>

Answer: B

6. Which option is used for removing a pattern from the end of a parameter value?<br>
A) /#<br>
B) /%<br>
C) #/<br>
D) %/<br>

Answer: B

7. What does the option :? do in parameter expansion?<br>
A) It expands to nothing if the parameter is unset or null.<br>
B) It expands to a default value if the parameter is unset or null.<br>
C) It expands to the length of the parameter value.<br>
D) It expands to the value of the parameter if it is set and not null.<br>

Answer: B

8. Which option is used for substituting a value for a parameter value that matches a pattern?<br>
A) //<br>
B) /\<br>
C) \//<br>
D) \\<br>

Answer: A

9. What does the option := do in parameter expansion?<br>
A) It expands to a default value if the parameter is unset or null.<br>
B) It expands to nothing if the parameter is unset or null.<br>
C) It expands to the value of the parameter if it is set and not null.<br>
D) It assigns a value to the parameter if it is unset or null.<br>

Answer: D