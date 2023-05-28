#!/bin/bash

select option in "Option 1" "Option 2" "Option 3" "Quit"
do
    case $option in
        "Option 1")
            echo "You select option 1"
            ;;
        "Option 2")
            echo "You select option 2"
            ;;
        "Option 3")
            echo "You select option 3"
            ;;
        "Quit")
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option selected"
            ;;
    esac
done
