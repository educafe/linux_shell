#!/bin/bash
str='
'
# str=""
if [ -z "$str" ]; then
	echo "\$str is NULL."
else
	printf "HEX=%x\t DEC=%d\t OCT=%o\n" "'$str'" "'$str'" "'$str'"
fi 		# $unassigned is NULL.

if [ -n "$str" ]; then
	echo "\$str is not NULL."
else
	printf "HEX=%x\t DEC=%d\t OCT=%o\n" "'$str'" "'$str'" "'$str'"
fi 