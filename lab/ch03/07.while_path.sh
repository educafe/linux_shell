#!/bin/bash
#path information

echo $PATH > file
while read entry
do
	IFS=:
	for value in $entry
	do
		echo $value
	done
done < file