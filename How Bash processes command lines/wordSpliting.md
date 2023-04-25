

Word splitting is a process in bash where a string is split into separate words based on a delimiter. The default delimiter is whitespace (spaces, tabs, and newlines), but it can be changed to any other character.

Here are some examples of how word splitting works in bash:

1. Using a variable:

```
sentence="The quick brown fox"
for word in $sentence
do
  echo $word
done
```

Output:

```
The
quick
brown
fox
```

Explanation: The variable `sentence` contains a string with several words separated by spaces. The `for` loop iterates over each word in the string by splitting it based on the whitespace delimiter.

2. Using a command substitution:

```
files=$(ls *.txt)
for file in $files
do
  echo $file
done
```

Output:

```
file1.txt
file2.txt
file3.txt
```

Explanation: The command `ls *.txt` lists all the files in the current directory that have a ".txt" extension. The output of this command is captured in the variable `files` using command substitution (`$()`). The `for` loop then iterates over each file in the `files` variable by splitting it based on the whitespace delimiter.

3. Using an array:

```
words=("apple" "banana" "cherry")
for fruit in "${words[@]}"
do
  echo $fruit
done
```

Output:

```
apple
banana
cherry
```

Explanation: The `words` variable is an array that contains three strings. The `for` loop iterates over each element in the array by using the `"${words[@]}"` syntax, which ensures that each element is treated as a separate word.

## Quiz

Sure, here are four quiz questions on word splitting in bash:

1. What is word splitting in bash?

A) A process in which a string is split into separate words based on a delimiter<br>
B) A process in which a string is split into separate characters<br>
C) A process in which a string is converted into a numeric value<br>
D) A process in which a string is copied to a new variable<br>

Answer: A

2. What is the default delimiter used for word splitting in bash?

A) Colon (:)<br>
B) Semicolon (;)<br>
C) Whitespace (spaces, tabs, and newlines)<br>
D) Comma (,)<br>

Answer: C

3. How can you change the delimiter used for word splitting in bash?

A) By modifying the IFS (Internal Field Separator) variable<br>
B) By using the -d option with the read command<br>
C) By using the -F option with the awk command<br>
D) By using the -d option with the cut command<br>

Answer: A

4. Which of the following is an example of word splitting in bash?

A) Assigning a string to a variable<br>
B) Using the echo command to print a string to the console<br>
C) Iterating over each word in a string using a for loop<br>
D) Converting a string to uppercase using the tr command<br>

Answer: C