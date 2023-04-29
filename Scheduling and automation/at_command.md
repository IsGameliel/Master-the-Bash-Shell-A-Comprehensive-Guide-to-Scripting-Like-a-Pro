

The "at" command in bash is used to schedule commands to be executed at a specified time. Here are 5 examples of how to use the "at" command:

1. To execute a command at a specific time:
```
at 12:00 PM tomorrow
ls -l
```
This will execute the "ls -l" command at 12:00 PM tomorrow.

2. To execute a command after a certain amount of time:
```
at now + 1 hour
echo "Hello World"
```
This will execute the "echo "Hello World"" command one hour from the current time.

3. To execute a script at a specific time:
```
at 10:00 PM next Saturday
./backup_script.sh
```
This will execute the "backup_script.sh" script at 10:00 PM next Saturday.

4. To specify a specific date and time to execute a command:
```
at 9:30 AM 2023-05-15
echo "Happy birthday!"
```
This will execute the "echo "Happy birthday!"" command at 9:30 AM on May 15th, 2023.

5. To view a list of pending "at" jobs:
```
at -l
```
This will display a list of all pending "at" jobs for the current user.

## Quiz

Sure, here are 7 quiz questions on the "at" command and "cron" in bash:

1. What is the purpose of the "at" command in bash?<br>
A. To schedule commands to be executed at a specified time<br>
B. To repeat a command every x minutes<br>
C. To display a list of all running processes<br>
D. To create a new user account<br>

Answer: A

2. How do you schedule a command to be executed at a specific time using the "at" command?<br>
A. at -t <time> <command><br>
B. at <time> <command><br>
C. at <command> -t <time><br>
D. at <time> -c <command><br>

Answer: B

3. What is the purpose of the "cron" command in bash?<br>
A. To schedule commands to be executed at a specific time<br>
B. To repeat a command every x minutes<br>
C. To display a list of all running processes<br>
D. To create a new user account<br>

Answer: B

4. How do you list all scheduled "at" jobs using the command line?<br>
A. at -l<br>
B. at -a<br>
C. at -s<br>
D. at -p<br>

Answer: A

5. How do you schedule a command to be executed every day at 3pm using the "cron" command?<br>
A. 0 3 * * * <command><br>
B. 3 * * * * <command><br>
C. 0 * * * 3 <command><br>
D. 0 0 3 * * <command><br>

Answer: A

6. What is the main difference between the "at" command and the "cron" command?<br>
A. The "at" command executes a command at a specific time, while the "cron" command executes a command at regular intervals.<br>
B. The "at" command executes a command at regular intervals, while the "cron" command executes a command at a specific time.<br>
C. The "at" command and the "cron" command are used for the same purpose.<br>
D. The "at" command is used for system-level tasks, while the "cron" command is used for user-level tasks.<br>

Answer: A

7. How do you edit the list of scheduled "cron" jobs for the current user using the command line?<br>
A. crontab -e<br>
B. cron -e<br>
C. cron -l<br>
D. crontab -l<br>

Answer: A