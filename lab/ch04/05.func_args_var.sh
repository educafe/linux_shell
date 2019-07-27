#!/bin/bash
# trying to access script parameters inside a function
source $HOME/snippets/color

function mutiply {
	echo $[ $1 * $2 ]
} 

echo -e $RED"Main begins"$RESET

read -p "Input Numbers : " num1 num2
value=$(mutiply $num1 $num2)
echo -e ${URED}"The result is $value"$RESET

