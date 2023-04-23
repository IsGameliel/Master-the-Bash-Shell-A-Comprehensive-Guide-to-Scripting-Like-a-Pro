## project on command substitution in Bash:

**Project:** File Backup with Timestamp

**Objective:**
Create a Bash script that creates a backup of a given file with a timestamp in the filename. The script should take the filename as an argument and use command substitution to append a timestamp to the filename.

Steps:
1. Create a new Bash script file with the name `file_backup.sh` using the `touch` command.
2. Use the `chmod` command to make the script executable (`chmod +x file_backup.sh`).
3. Use the `nano` or `vim` editor to open the script file (`nano file_backup.sh`).
4. Add the following code to the script file:

```
#!/bin/bash

if [ $# -ne 1 ]
then
  echo "Usage: $0 <filename>"
  exit 1
fi

filename=$1
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
backup_filename=${filename%.*}_${timestamp}.${filename##*.}

cp $filename $backup_filename
echo "Backup created: $backup_filename"
```

5. Save and close the script file.
6. Test the script by running the command `./file_backup.sh <filename>` in the terminal, where `<filename>` is the name of the file you want to back up.
7. The script will create a backup of the file with a timestamp in the filename in the same directory as the original file.
8. Run the command `ls -l` to verify that the backup file has been created with the correct timestamp in the filename.

Explanation:
The Bash script checks if the correct number of arguments have been passed to it using the `$#` variable. If not, it displays a usage message and exits with an error code of 1 using the `exit` command.

The filename is assigned to the `$1` variable, which is the first command line argument passed to the script. The `date` command with the `%Y-%m-%d_%H-%M-%S` format option outputs the current date and time in the format "YYYY-MM-DD_HH-MM-SS". The output of this command is assigned to the `timestamp` variable using command substitution.

The `backup_filename` variable uses parameter expansion to remove the extension from the filename and append the timestamp and extension to it. The `${filename%.*}` expression removes the extension from the filename and `${filename##*.}` extracts the extension of the filename.

The `cp` command is used to copy the original file to the backup file with the new filename. The `echo` command is used to display a message indicating that the backup file has been created.

Overall, this project demonstrates how command substitution can be used to dynamically generate filenames with timestamps in Bash scripts.