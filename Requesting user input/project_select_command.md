# Project 4

Here's an example project that demonstrates how to use the `select` command in a Bash script to create an interactive menu for managing user accounts.

The goal of the project is to create a script that allows an administrator to create, delete, and list user accounts on a Linux system.

Here's the code:

```
#!/bin/bash

# Display the menu
while true
do
    echo "User Account Management"
    echo "-----------------------"
    echo "1. Create a new user"
    echo "2. Delete an existing user"
    echo "3. List all users"
    echo "4. Quit"
    read -p "Enter your choice [1-4]: " choice

    # Execute the selected option
    case $choice in
        1)
            read -p "Enter the username: " username
            read -p "Enter the password: " password
            read -p "Enter the full name: " fullname
            useradd -m -c "$fullname" -s /bin/bash "$username"
            echo "$username:$password" | chpasswd
            echo "User $username created"
            ;;
        2)
            read -p "Enter the username to delete: " username
            userdel -r "$username"
            echo "User $username deleted"
            ;;
        3)
            echo "List of all users:"
            cut -d: -f1 /etc/passwd
            ;;
        4)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done
```

When the script is run, it displays a menu with four options: "Create a new user", "Delete an existing user", "List all users", and "Quit". The `select` command prompts the user to enter a number corresponding to one of the options.

When the user selects an option, the script executes the corresponding command(s) inside the `case` statement.

Option 1 creates a new user by prompting the administrator for the username, password, and full name, and then using the `useradd` and `chpasswd` commands to create the user and set the password.

Option 2 deletes an existing user by prompting the administrator for the username, and then using the `userdel` command to delete the user and their home directory.

Option 3 lists all the users on the system by using the `cut` command to extract the usernames from the `/etc/passwd` file.

Option 4 exits the script by using the `exit` command.

This is just an example project, and you can modify it to suit your specific needs. The `select` command provides a powerful way to create interactive menus in Bash scripts, and can be used in a wide range of applications.