#!/bin/bash

while true; do
    clear
    echo "Menu:"
    echo "1. Option 1"
    echo "2. Option 2"
    echo "3. Option 3"
    echo "0. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            echo "You chose Option 1"
            read -p "Press enter to continue..."
            ;;
        2)
            echo "You chose Option 2"
            read -p "Press enter to continue..."
            ;;
        3)
            echo "You chose Option 3"
            read -p "Press enter to continue..."
            ;;
        0)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            read -p "Press enter to continue..."
            ;;
    esac
done
