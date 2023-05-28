#!/bin/bash

while getopts ":abc" opt; do
	case ${opt} in 
		a)
			echo "Option -a was triggered!"
			;;
		b)
			echo "Option -b was triggered!"
			;;
		c)
			echo "Option -c was triggered!"
			;;
		\?)
			echo "Invalid option: -OPTARG" >&2
			;;
	esac
done
