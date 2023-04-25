Expansions in bash are a way of performing dynamic substitution of values within a command or argument. There are several types of expansions in bash, including:

1. Brace expansion: This allows you to generate a series of strings by specifying a range of values or a comma-separated list within curly braces. For example:
```
$ echo {a,b,c}
a b c

$ echo {1..5}
1 2 3 4 5

$ echo {a..e}{1..3}
a1 a2 a3 b1 b2 b3 c1 c2 c3 d1 d2 d3 e1 e2 e3
```

2. Tilde expansion: This allows you to refer to a user's home directory by using the tilde character (~). For example:
```
$ echo ~
/home/user

$ echo ~/Documents
/home/user/Documents
```

3. Parameter expansion: This allows you to manipulate variables by adding or removing characters or by substituting values. Some examples include:
```
$ var="hello world"

$ echo ${var}
hello world

$ echo ${var/world/foo}
hello foo

$ echo ${var#*l}
lo world

$ echo ${var%l*}
hello wor
```

4. Command substitution: This allows you to run a command and substitute its output into another command or argument. For example:
```
$ echo "Today is $(date +%A)"
Today is Sunday

$ files=$(ls)

$ echo "There are $(echo $files | wc -w) files in this directory."
There are 5 files in this directory.
```

5. Arithmetic expansion: This allows you to perform arithmetic operations within a command or argument by enclosing the expression in double parentheses. For example:
```
$ echo $((2 + 3))
5

$ x=5

$ echo $((x * 3))
15
```

## Quiz

Sure, here are 4 quiz questions on expansions in bash:

1. What is the purpose of brace expansion in bash?<br>
A) To perform arithmetic operations within a command<br>
B) To manipulate variables by adding or removing characters<br>
C) To generate a series of strings based on a range or list of values<br>
D) To substitute the output of a command into another command or argument<br>

Answer: C

2. Which expansion in bash allows you to refer to a user's home directory?<br>
A) Brace expansion<br>
B) Tilde expansion<br>
C) Parameter expansion<br>
D) Command substitution<br>

Answer: B

3. What is the syntax for parameter expansion in bash?<br>
A) $(command)
B) ~ 
C) {a,b,c}
D) ${parameter}

Answer: D

4. Which expansion in bash allows you to run a command and substitute its output into another command or argument?<br>
A) Brace expansion<br>
B) Tilde expansion<br>
C) Parameter expansion<br>
D) Command substitution<br>

Answer: D