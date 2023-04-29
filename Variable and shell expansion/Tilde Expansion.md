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



1. What is the command to expand a tilde (~) to the user's home directory in Bash?<br>
a) cd ~<br>
b) cd ~/home<br>
c) cd /<br>
d) cd ~/<br>

Answer: d) cd ~/

2. What is the purpose of tilde expansion in Bash?<br>
a) To switch to the root directory<br>
b) To expand the current directory<br>
c) To expand a user's home directory<br>
d) To create a new directory<br>

Answer: c) To expand a user's home directory

3. Which of the following is an example of using tilde expansion to create a new directory in the home directory?<br>
a) mkdir /home/user/newdir<br>
b) mkdir ~/newdir<br>
c) mkdir newdir<br>
d) mkdir ./newdir<br>

Answer: b) mkdir ~/newdir

4. What is the command to expand a tilde to the home directory of a specific user in Bash?<br>
a) cd ~username<br>
b) cd ~/username<br>
c) cd username<br>
d) cd /username<br>

Answer: a) cd ~username

5. Which of the following is an example of using tilde expansion to specify a file path in the home directory?<br>
a) cat /home/user/file.txt<br>
b) cat ~/file.txt<br>
c) cat file.txt<br>
d) cat ./file.txt<br>

Answer: b) cat ~/file.txt

6. What is the command to expand a tilde to the previous working directory in Bash?<br>
a) cd ~-<br>
b) cd ../<br>
c) cd -<br>
d) cd /<br>

Answer: a) cd ~-

7. Which of the following is an example of using tilde expansion to specify a file path in a subdirectory of the home directory?<br>
a) cat /home/user/subdir/file.txt<br>
b) cat ~/subdir/file.txt<br>
c) cat file.txt<br>
d) cat ./subdir/file.txt<br>

Answer: b) cat ~/subdir/file.txt

8. What is the command to list the contents of a user's home directory using tilde expansion?<br>
a) ls ~/<br>
b) ls /<br>
c) ls ~<br>
d) ls ~/home<br>

Answer: a) ls ~/