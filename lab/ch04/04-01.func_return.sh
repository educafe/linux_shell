#!/bin/bash
# using the echo to return a value

function return_code() {
	ls /usr/bin &> /dev/null
	if [ $? -ne 0 ]; then
		return 2
	fi
} 

return_code

if [ $? -eq 0 ]; then
	echo "function return_code successfully completed"
else
	echo "function return_code has abnormally completed"
fi

