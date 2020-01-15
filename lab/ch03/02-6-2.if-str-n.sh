#!/bin/bash
# Performing checks on and between strings

	
read -p "Input string : " -n 1 str
# read -p "Input string : " -N 1 str
echo
if [ -z $str ]; then
	echo "\$str is NULL"
else
	printf "HEX=%x\t DEC=%d\t OCT=%o\n" "'$str'" "'$str'" "'$str'"
fi
if [ -n $str ]; then
	printf "HEX=%x\t DEC=%d\t OCT=%o\n" "'$str'" "'$str'" "'$str'"
else
	echo "\$str is NULL."
fi

if [[ $str == $'\0' ]]; then
	echo "True. It is NULL"
else
	echo "False. It is not NULL"
fi

# Test SPACE, TAB and ENTER key by receiving just one character 
# to see if how it reacts 