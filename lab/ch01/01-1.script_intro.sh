#!/bin/bash

while read -p "Find ASCII code: " -N 1 char
do
	echo 
	echo $(printf "HEX=%x DEC=%d OCT=%o" "'$char'" "'$char'" "'$char'")
done