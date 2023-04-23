## Paramenter expansion tricks

Parameter expansion in Bash is a powerful feature that allows you to manipulate variables and their values in various ways. Here are some parameter expansion tricks in Bash:

1. Removing a suffix from a variable: You can use `${variable%suffix}` to remove a suffix from the end of a variable. For example, if `$filename` is "document.txt", you can remove the ".txt" suffix by using `${filename%.txt}`.

2. Removing a prefix from a variable: You can use `${variable#prefix}` to remove a prefix from the beginning of a variable. For example, if `$filename` is "document.txt", you can remove the "document." prefix by using `${filename#document.}`.

3. Substring expansion: You can use `${variable:start:length}` to extract a substring from a variable. For example, if `$filename` is "document.txt", you can extract the substring "doc" by using `${filename:0:3}`.

4. Default value: You can use `${variable:-default}` to use a default value if the variable is not set or is null. For example, if `$filename` is not set, you can use `${filename:-untitled.txt}` to set a default value of "untitled.txt".

5. Conditional value: You can use `${variable:+value}` to set a value only if the variable is set and is not null. For example, if `$filename` is set, you can use `${filename:+-r}` to add the "-r" option to a command.

6. Substitution: You can use `${variable/search/replace}` to substitute a string in a variable. For example, if `$filename` is "document.txt", you can replace ".txt" with ".md" by using `${filename/.txt/.md}`.

7. Default value with substitution: You can combine default value and substitution by using `${variable:-default/search/replace}`. For example, if `$filename` is not set, you can use `${filename:-untitled.txt/.txt/.md}` to set a default value of "untitled.md".

These are just a few examples of the powerful parameter expansion features in Bash. By combining these tricks, you can write concise and efficient Bash scripts.