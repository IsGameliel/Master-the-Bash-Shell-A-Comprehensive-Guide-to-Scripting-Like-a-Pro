#!/bin/bash

a=12
b=43
c=21

if [ "$a" -gt "$b" ] && [ "$a" -gt "$c" ]; then
	echo "$a is the largest"
elif [ "$b" -gt "$a" ] && [ "$b" -gt "$c" ]; then
	echo "$b is the largest"
else
	echo "$c is the largest"
fi
