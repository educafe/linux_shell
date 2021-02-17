#!/bin/bash

#reference library
. ./myfuncs.sh

# PS4='+ ${BASH_SOURCE}:${LINENO}:${FUNCNAME[0]}() '

# read -p "Input two numbers : " num1 num2
while [ -z $num1 ] || [  -z $num2 ]
do
	read -p "Please Input two numbers : " num1 num2
done

set -x
trap read debug

result1=$(myadd $num1 $num2)
result2=$(mysub $num1 $num2)
result3=$(mymul $num1 $num2)
result4=$(mydiv $num1 $num2)

tput setaf 1
echo "Add $num1 + $num2 : $result1"
tput setaf 2
echo "Substract $num1 - $num2 : $result2"
tput setaf 3
echo "Multiply $num1 * $num2 : $result3"
tput setaf 4
echo "Divide $num1 / $num2 : $result4"
T

