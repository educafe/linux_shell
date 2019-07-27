#!/bin/bash
# Performing checks on and between strings

read -p "Input string : " -n 1 str
#str=$'\0'
echo
if [ -n $str ]; then
	echo "STR=$str is not empty"
else
	echo "STR=$str is empty"
fi

if [ -z $str ]; then
	echo "STR=$str is zero-length"
else
	echo "STR=$str is not zero-length "
fi

if [[ $str = $'\0' ]]; then
	echo "True"
else
	echo "False"
fi

# Test SPACE, TAB and ENTER key by receiving just one character 
# to see if how it reacts 