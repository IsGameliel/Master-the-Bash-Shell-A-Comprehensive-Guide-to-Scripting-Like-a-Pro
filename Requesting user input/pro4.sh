#!/bin/bash

# Display the menu
while true
do
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
            read -p "Enter the fullname: " fullname
            useradd -m -c "$fullname" -s /bin/bash "$username"
            echo "$usernmae:$password" | chpasswd
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
            echo "Exiting...."
            exit 0
            ;;
        *)
            echo "invalid choice. please try again"
            ;;
    esac
done
