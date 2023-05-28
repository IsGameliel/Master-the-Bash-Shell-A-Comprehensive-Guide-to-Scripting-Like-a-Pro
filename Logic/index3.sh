#!/bin/bash

if [ index4.sh -nt index.sh ]; then
	echo "index4.sh is newer"
else
	echo "index4 is not newer"
fi
