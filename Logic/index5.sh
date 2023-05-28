#!/bin/bash

filename="test.txt"

case $filename in
	*.txt)
		echo "the file is a text file"
		;;
	*.jpg)
		echo "the file is an image file"
		;;
	*.pdf)
		echo "the file is a pdf file"
		;;
	*)
		echo "Not in my list"
		;;
esac
