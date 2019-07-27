#!/bin/bash
# using the echo to return a value
source $HOME/snippets/color

function double {
	echo "Function double has been called" >&2	#to prevent redirect to a stdout, redirect to stderr
	read -p "Enter a value: " value
	# echo $[ $value * 2 ]					# output to stdout will return a result back to main
	printf "$[ $value * 2 ]" 	
	local result=$[ $value * 2 ]
	echo $result
#	printf "$result"
} 

echo -e ${URED}"Main routine begins"$RESET
ret=$(double)					#like cmd substitution, it save the result of function double
echo "The returned new value is : $ret"
echo -e ${URED}"Main routine ends"$RESET