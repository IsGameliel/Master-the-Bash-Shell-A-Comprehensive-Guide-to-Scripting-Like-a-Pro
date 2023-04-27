## Project Title: Counting Files in a Directory

Project Description: In this project, we will use a for loop in Bash to count the number of files in a directory.

Project Steps:

1. Open up a terminal window and navigate to the directory that you want to count the files in.

2. Create a Bash script called "count_files.sh" and open it in your preferred text editor.

3. Start the script by defining a variable called "count" and setting its value to zero:

```
#!/bin/bash

count=0
```

4. Use a for loop to iterate over all the files in the directory. For each file, increment the "count" variable by 1.

```
#!/bin/bash

count=0

for file in *
do
  if [ -f "$file" ]
  then
    count=$((count+1))
  fi
done

echo "There are $count files in this directory."
```

5. Save the script and exit your text editor.

6. Make the script executable by running the following command in your terminal:

```
chmod +x count_files.sh
```

7. Run the script by typing its name into the terminal:

```
./count_files.sh
```

8. The script will output the number of files in the directory.

Congratulations! You have successfully used a for loop in Bash to count the number of files in a directory.