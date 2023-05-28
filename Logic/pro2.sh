#!/bin/bash

while true; do 
	clear
	echo "Menu:"
	echo "1. Home"
	echo "2. About"
	echo "3. Contact"
	echo "0. Exit"
	read -p "Enter your choice: " choice

	case $choice in
		1)
			echo "This is the Home page"
			read -p "Press enter to continue..."
			;;
		2)
			echo "This is the about page"
			read -p "Press enter to continue.."
			;;
		3)
			echo "this is the contact page"
			read -p "press enter to continue"
			;;
		0)
			echo "Exiting..."
			exit 0
			;;
		*)
			echo "Invalid input, please try again"
			read -p "press enter to continue"
			;;
	esac
done
