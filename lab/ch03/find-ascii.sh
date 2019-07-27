#!/bin/bash
# Find ASCII Code
prompt="Input Character ('ESC' to quit) : "
while true
do
	read -p "$prompt" -N 1 char
	echo
	echo $(printf " HEX=%x  DEC=%d  OCT=%o" "'$char'" "'$char'" "'$char'")
	if [ $char = $'\033' ]; then
		break;
	fi
done