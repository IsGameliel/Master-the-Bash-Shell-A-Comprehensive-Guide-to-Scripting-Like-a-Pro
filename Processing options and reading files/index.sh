#!/bin/bash

opt_a=false
opt_b=false

while getopts ":ab" opt; do
	case ${opt} in
		a)
			echo "Option -a was triggered!";;
		b)
			echo "Option -b was trigggered";;
		\?)
			echo "Invalid option was triggered: -$OPTARG" >&2;;
	esac
done

if $opt_a; then
	echo "Option -a was triggered!"
fi

if $opt_b; then
	echo "Option -b was triggered!"
fi

