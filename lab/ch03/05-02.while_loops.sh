#!/bin/bash

echo $PATH > file
IFS=:
while read path
do
	printf "%s\n" $path
done < file
