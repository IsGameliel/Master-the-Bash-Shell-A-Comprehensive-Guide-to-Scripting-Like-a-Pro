In bash, redirection is the process of changing the input or output of a command or group of commands. It is useful for manipulating files, filtering input, and sending output to a different location.

Here are some examples of redirection in bash:

1. Redirecting Output to a File:
   You can use the ">" symbol to redirect the output of a command to a file. For example, the following command will save the output of the "ls" command to a file called "files.txt":
   
   ```
   ls > files.txt
   ```
   
2. Appending Output to a File:
   You can use ">>" instead of ">" to append the output of a command to a file. For example, the following command will append the output of the "ls" command to the end of the "files.txt" file:
   
   ```
   ls >> files.txt
   ```
   
3. Redirecting Input from a File:
   You can use the "<" symbol to redirect input from a file. For example, the following command will use the "sort" command to sort the lines in a file called "unsorted.txt":
   
   ```
   sort < unsorted.txt
   ```
   
4. Redirecting Output and Error to a File:
   You can use the "2>&1" symbol to redirect both standard output and standard error to a file. For example, the following command will save both the output and error messages from the "ls" command to a file called "output.txt":
   
   ```
   ls > output.txt 2>&1
   ```
   
5. Piping Output to Another Command:
   You can use the "|" symbol to pipe the output of one command into another command. For example, the following command will use the "grep" command to find all lines in a file called "data.txt" that contain the word "apple":
   
   ```
   cat data.txt | grep "apple"
   ```

## Quiz 

Sure, here are four quiz questions related to redirection in bash:

1. What symbol is used to redirect the output of a command to a file?<br>
   A. "<"<br>
   B. ">"<br>
   C. ">>"<br>
   D. "|"<br>

Answer: B. ">"

2. How do you redirect standard error to a file while still displaying standard output on the terminal?<br>
   A. "> file.txt"<br>
   B. "2> file.txt"<br>
   C. "1> file.txt"<br>
   D. "2>&1 | tee file.txt"<br>

Answer: D. "2>&1 | tee file.txt"

3. How do you append output to a file instead of overwriting it?<br>
   A. "> file.txt"<br>
   B. ">> file.txt"<br>
   C. "2> file.txt"<br>
   D. "2>&1 | tee file.txt"<br>

Answer: B. ">> file.txt"

4. How do you redirect input from a file instead of from the keyboard?<br>
   A. "> file.txt"<br>
   B. ">> file.txt"<br>
   C. "< file.txt"<br>
   D. "2>&1 | tee file.txt"<br>

Answer: C. "< file.txt"