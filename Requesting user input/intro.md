# Introduction

In bash, you can request user input by using the `read` command. Here's an example:

```
#!/bin/bash
echo "What is your name?"
read name
echo "Hello, $name!"
```

In this example, the script prompts the user to enter their name by displaying the message "What is your name?" using the `echo` command. The `read` command waits for the user to input a value and assigns that value to the variable `name`. Finally, the script uses the `echo` command again to display a greeting message that includes the user's name.

When you run this script, it will display the message "What is your name?" and wait for the user to input their name. Once the user enters their name and presses enter, the script will display a greeting message that includes the user's name.