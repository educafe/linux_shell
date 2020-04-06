#!/bin/bash
# string check 

read -p "Input string : " str

if [ $str = hello ]; then
	echo "'$str' is the same as 'hello'"
elif [ $str \> "hello" ]; then
	echo "$str is greater than hello"
else
	echo "$str is less than hello"
fi

if [[ $str == linu? ]]; then
#if [[ "$str" =~ "linu" ]]; then
#if [[ $str =~ \.sh ]]; then
	echo "True"
else
	echo "False"
fi

