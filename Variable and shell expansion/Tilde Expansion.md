## tilde Expansion

In bash, tilde expansion is a feature that allows you to refer to a user's home directory or a specific subdirectory of a user's home directory. It uses the tilde symbol (`~`) followed by either a username or a subdirectory name to represent the directory path.

Here are some examples of tilde expansion in bash:

1. Referencing the current user's home directory:
```
cd ~
```
This changes the current directory to the home directory of the current user.

2. Referencing a specific user's home directory:
```
cd ~john
```
This changes the current directory to the home directory of the user "john".

3. Referencing a subdirectory of the current user's home directory:
```
ls ~/Documents
```
This lists the contents of the "Documents" subdirectory in the current user's home directory.

4. Referencing a subdirectory of a specific user's home directory:
```
ls ~john/Pictures
```
This lists the contents of the "Pictures" subdirectory in the home directory of the user "john".

Tilde expansion can also be combined with other shell commands and operators to perform more complex operations. For example, you can use tilde expansion with the `find` command to search for files in a specific subdirectory of a user's home directory:
```
find ~john/Documents -name "*.txt"
```
This finds all files with the `.txt` extension in the "Documents" subdirectory of the home directory of the user "john".

## Quiz

1. What is Arithmetic Expansion in Bash?

2. What is the syntax for Arithmetic Expansion in Bash?

3. How can you use Arithmetic Expansion to add two numbers in Bash?

4. How can you use Arithmetic Expansion to subtract two numbers in Bash?

5. How can you use Arithmetic Expansion to multiply two numbers in Bash?

6. How can you use Arithmetic Expansion to divide two numbers in Bash?

7. How can you use Arithmetic Expansion to find the remainder of a division operation in Bash?

8. How can you use Arithmetic Expansion to increment a variable by one in Bash?

9. How can you use Arithmetic Expansion to decrement a variable by one in Bash?

10. How can you use Arithmetic Expansion to perform bitwise operations in Bash?

**Answers:**

1. Arithmetic Expansion in Bash is a way to perform arithmetic operations on numeric values.

2. The syntax for Arithmetic Expansion in Bash is to enclose the arithmetic expression within double parentheses, like this: $((expression)).

3. To add two numbers using Arithmetic Expansion in Bash, you can use the syntax $((num1 + num2)).

4. To subtract two numbers using Arithmetic Expansion in Bash, you can use the syntax $((num1 - num2)).

5. To multiply two numbers using Arithmetic Expansion in Bash, you can use the syntax $((num1 * num2)).

6. To divide two numbers using Arithmetic Expansion in Bash, you can use the syntax $((num1 / num2)).

7. To find the remainder of a division operation using Arithmetic Expansion in Bash, you can use the syntax $((num1 % num2)).

8. To increment a variable by one using Arithmetic Expansion in Bash, you can use the syntax $((var++)).

9. To decrement a variable by one using Arithmetic Expansion in Bash, you can use the syntax $((var--)).

10. To perform bitwise operations using Arithmetic Expansion in Bash, you can use operators like "&" (AND), "|" (OR), "~" (NOT), "<<" (left shift), and ">>" (right shift), inside the double parentheses. For example: $((num1 & num2)).