

Bash is a popular command-line shell used in Unix-based systems. It provides powerful tools to automate and schedule tasks. Here are 7 examples of scheduling and automation in bash:

1. Running a script at a specific time every day

You can use the `crontab` command to schedule a script to run at a specific time every day. For example, the following command will run the script `my_script.sh` every day at 5:30 AM:

```
30 5 * * * /path/to/my_script.sh
```

2. Running a script periodically

You can use the `while` loop to run a script periodically. For example, the following script will run the command `my_command` every 10 seconds:

```
#!/bin/bash

while true
do
    my_command
    sleep 10
done
```

3. Running a script on startup

You can use the `rc.local` file to run a script on startup. For example, the following command will run the script `my_script.sh` on startup:

```
sudo nano /etc/rc.local

# add the following line to the file
/path/to/my_script.sh &
```

4. Running a script when a file changes

You can use the `inotifywait` command to run a script when a file changes. For example, the following script will run the command `my_command` every time the file `/path/to/my_file` changes:

```
#!/bin/bash

while inotifywait -e modify /path/to/my_file
do
    my_command
done
```

5. Sending an email when a script finishes

You can use the `mail` command to send an email when a script finishes. For example, the following script will send an email with the subject "Script Finished" and the message "The script has finished running" when the script `my_script.sh` finishes:

```
#!/bin/bash

/path/to/my_script.sh

echo "The script has finished running" | mail -s "Script Finished" you@example.com
```

6. Renaming multiple files at once

You can use the `rename` command to rename multiple files at once. For example, the following command will rename all files in the current directory with the extension `.txt` to have the extension `.md`:

```
rename 's/\.txt$/.md/' *.txt
```

7. Finding and deleting old files

You can use the `find` command to find and delete old files. For example, the following command will find and delete all files in the directory `/path/to/my_directory` that are older than 7 days:

```
find /path/to/my_directory -type f -mtime +7 -exec rm {} \;
```