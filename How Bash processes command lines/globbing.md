## Globbing

Globbing, also known as filename expansion, is a feature in bash that allows you to use wildcard characters to match filenames or directories. Here are some examples of globbing patterns in bash:

1. Asterisk (*) - Matches any string of characters, including none.

   For example, to list all files in the current directory that start with "test", you can use the following command:

   ```
   ls test*
   ```

   This will match filenames such as "testfile", "test123", and "test.txt".

2. Question mark (?) - Matches any single character.

   For example, to list all files in the current directory that have a three-letter extension, you can use the following command:

   ```
   ls *???
   ```

   This will match filenames such as "file.txt", "image.png", and "doc.pdf".

3. Character ranges - Matches any character within a specified range.

   For example, to list all files in the current directory that have a number in the filename, you can use the following command:

   ```
   ls *[0-9]*
   ```

   This will match filenames such as "file1.txt", "image_2.png", and "doc-123.pdf".

4. Negation (!) - Matches any string that does not match the pattern.

   For example, to list all files in the current directory that do not have a .txt extension, you can use the following command:

   ```
   ls !(*.txt)
   ```

   This will match filenames such as "file.jpg", "image.png", and "doc.pdf".

## Quiz

Sure, here are four quiz questions on globbing in bash:

1. Which globbing pattern matches any string of characters, including none?<br>
A. Asterisk (*)<br>
B. Question mark (?)<br>
C. Character ranges<br>
D. Negation (!)<br>

Answer: A. Asterisk (*)

2. Which globbing pattern matches any single character?<br>
A. Asterisk (*)<br>
B. Question mark (?)<br>
C. Character ranges<br>
D. Negation (!)<br>

Answer: B. Question mark (?)

3. Which globbing pattern matches any character within a specified range?<br>
A. Asterisk (*)<br>
B. Question mark (?)<br>
C. Character ranges<br>
D. Negation (!)<br>

Answer: C. Character ranges

4. Which globbing pattern matches any string that does not match the pattern?<br>
A. Asterisk (*)<br>
B. Question mark (?)<br>
C. Character ranges<br>
D. Negation (!)<br>

Answer: D. Negation (!)