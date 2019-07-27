#!/bin/bash
# using functions defined in a library file
source $HOME/snippets/color

#reference library
. ./myfuncs

# read -p "Input two numbers : " num1 num2
while [ -z $num1 ] || [  -z $num2 ]
do
	read -p "Please Input two numbers : " num1 num2
done

result1=$(myadd $num1 $num2)
result2=$(mysub $num1 $num2)
result3=$(mymul $num1 $num2)
result4=$(mydiv $num1 $num2)

echo -e $RED"Add $num1 + $num2 : $result1"$RESET
echo -e $BLUE"Substract $num1 - $num2 : $result2"$RESET
echo -e $GREEN"Multiply $num1 * $num2 : $result3"$RESET
echo -e $PURPLE"Divide $num1 / $num2 : $result4"$RESET
