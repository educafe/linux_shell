#!/bin/bash
# string check 

read -p "Input string : " str

str1=hello

if [ $str = hello ]; then
	echo "'$str' is the same as '$str1'"
elif [ $str \> $str1 ]; then
	echo "$str is greater than $str1"
else
	echo "$str is less than $str1"
fi

if [[ $str == linu? ]]; then
#if [[ "$str" =~ "linu" ]]; then
#if [[ $str =~ \.sh ]]; then
	echo "True"
else
	echo "False"
fi
