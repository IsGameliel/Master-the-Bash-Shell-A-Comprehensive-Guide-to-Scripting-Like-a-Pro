# Bash Script Structure core components

A Bash script is a program written in the Bash scripting language and executed by the Bash shell. It is a text file that contains a series of commands and instructions that are executed sequentially by the shell. The core components of a Bash script include:

- Shebang line: The first line of the script that begins with #! (hash-bang or shebang) followed by the path to the Bash interpreter. This line tells the system which interpreter to use to execute the script. For example.

```
#!/bin/bash
```

- Comments: Comments are used to explain what the script does, provide information about the author, or add any other useful information about the script. Comments start with the # (hash) character and continue until the end of the line.

```
# this is how to make a comment
```

- Variables: Variables are used to store data that can be used later in the script. Bash variables are created by assigning a value to a variable name. For example

```
name ="Eugene ibiso"
```

- Input and Output: Bash scripts can read input from users or files and write output to the screen or files. The standard input (stdin), output (stdout), and error (stderr) streams can be redirected to files or other programs using redirection operators.

- Control Structures: Bash scripts can use control structures to make decisions, loop through a set of instructions, or execute commands based on conditions. Control structures include if statements, for and while loops, case statements, and functions.

- Command Execution: Bash scripts can execute commands and programs using the same syntax as on the command line. The output of commands can be captured and stored in variables or files.

- Exit Status: The exit status of a script is a numeric value that indicates whether the script executed successfully or not. The exit status can be set using the exit command, and it can be checked using the $? (dollar question mark) variable.

```
$?
```

Overall, the structure of a Bash script includes shebang line, comments, variables, input and output, control structures, command execution, and exit status. Understanding these core components is essential for writing effective Bash scripts.



