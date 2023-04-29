Cron is a time-based job scheduler in Linux/Unix systems that allows you to run commands or scripts at specific times and intervals. In order to schedule and automate bash scripts using Cron, you can follow the steps below:

1. Open the crontab editor using the following command:

```
crontab -e
```

2. Add the job to the crontab file using the following format:

```
*     *     *   *    *        command to be executed
-     -     -   -    -
|     |     |   |    |
|     |     |   |    +----- day of the week (0 - 6) (Sunday = 0)
|     |     |   +------- month (1 - 12)
|     |     +--------- day of the month (1 - 31)
|     +----------- hour (0 - 23)
+------------- min (0 - 59)
```

3. For example, if you want to run a script called `myscript.sh` every day at 3:30 am, you can add the following line to the crontab file:

```
30 3 * * * /path/to/myscript.sh
```

4. If you want to run a script every hour, you can add the following line to the crontab file:

```
0 * * * * /path/to/myscript.sh
```

This will run the script every hour at the beginning of the hour.

5. If you want to run a script every 5 minutes, you can add the following line to the crontab file:

```
*/5 * * * * /path/to/myscript.sh
```

This will run the script every 5 minutes.

6. If you want to run a script every weekday at 8:30 am, you can add the following line to the crontab file:

```
30 8 * * 1-5 /path/to/myscript.sh
```

This will run the script every weekday (Monday to Friday) at 8:30 am.

7. Once you have added the job to the crontab file, save and exit the editor. Cron will automatically execute the script at the specified time.

Note: When you use cron, you may need to specify the full path to your script, since cron does not have the same environment variables as your user account.

For example, if your script is located in `/home/user/myscript.sh`, you should use the following command in your crontab file:

```
30 3 * * * /home/user/myscript.sh
```