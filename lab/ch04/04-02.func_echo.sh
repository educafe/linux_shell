#!/bin/bash
# using the echo to return a value

function double {
	tput setaf 1
	echo "Function double has been called" >&2
	read -p "Enter a value: " value
	# echo $[ $value * 2 ]					
	printf "$[ $value * 2 ]\n" >&2
	local result=$[ $value * 2 ]
	echo $result
#	printf "$result"
	tput setaf 0
} 

echo -e "Main routine begins"
ret=$(double)	
# double				
echo "The returned new value is : $ret"
echo -e "Main routine ends"

