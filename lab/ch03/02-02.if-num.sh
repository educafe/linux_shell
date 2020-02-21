#!/bin/bash
# Arithmetic check

if [ $# -lt 2 ]; then
	echo "Usage : $0 <arg1> <arg2>"
	exit 100
fi

num1=$1 num2=$2

if [[ $1 != $2 ]]; then
	echo $num1 is equal to $num2
elif (( num1 >= num2 )); then
	echo "$num1 is greater than $num2"
else
	echo "$num1 is less than $num2"
fi

