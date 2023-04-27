# Test Commands plus Conditional Operators

In bash, you can use test commands and conditional operators to perform tests on files, variables, and expressions. Here are some examples of how to use test commands and conditional operators in bash:

1. Test for the existence of a file:

```bash
if [ -e filename.txt ]; then
    echo "The file exists."
else
    echo "The file does not exist."
fi
```

This will test if the file "filename.txt" exists in the current directory.

2. Test if a variable is empty:

```bash
if [ -z "$variable" ]; then
    echo "The variable is empty."
else
    echo "The variable is not empty."
fi
```

This will test if the variable is empty or not.

3. Test if a file is a directory:

```bash
if [ -d directoryname ]; then
    echo "The directory exists."
else
    echo "The directory does not exist."
fi
```

This will test if the directory "directoryname" exists in the current directory.

4. Test if a file is executable:

```bash
if [ -x script.sh ]; then
    echo "The script is executable."
else
    echo "The script is not executable."
fi
```

This will test if the file "script.sh" is executable.

5. Test if a file is newer than another file:

```bash
if [ file1.txt -nt file2.txt ]; then
    echo "file1.txt is newer than file2.txt."
else
    echo "file1.txt is not newer than file2.txt."
fi
```

This will test if the file "file1.txt" is newer than the file "file2.txt".

6. Test if a string is equal to another string:

```bash
if [ "$string1" = "$string2" ]; then
    echo "The strings are equal."
else
    echo "The strings are not equal."
fi
```

This will test if the string "string1" is equal to the string "string2".

7. Test if a number is greater than another number:

```bash
if [ "$num1" -gt "$num2" ]; then
    echo "num1 is greater than num2."
else
    echo "num1 is not greater than num2."
fi
```

This will test if the number "num1" is greater than the number "num2".

Note that in the above examples, the square brackets "[" and "]" are used to enclose the test command and the conditional operator. These brackets are required for the test command to work properly. Also, the semicolon at the end of each line is used to separate commands on the same line.

## Quiz

Sure, here are five quiz questions on test commands and conditional operators in bash:

1. What test command can be used to check if a file is readable?<br>

A) -r<br>
B) -w<br>
C) -x<br>
D) -e<br>

Answer: A) -r

2. What conditional operator can be used to test if two strings are not equal?<br>

A) !=<br>
B) -<br>
C) =<br>
D) ==<br>

Answer: A) !=

3. What test command can be used to check if a variable is set?<br>

A) -z<br>
B) -n<br>
C) -s<br>
D) -v<br>

Answer: B) -n

4. What conditional operator can be used to perform a logical AND operation?<br>

A) ||<br>
B) &&<br>
C) -<br>
D) !<br>

Answer: B) &&

5. What test command can be used to check if a file is a symbolic link?<br>

A) -L<br>
B) -d<br>
C) -f<br>
D) -s<br>

Answer: A) -L