#!/bin/bash

read -p "Input file name : " fname

if [ -e $fname ]; then
	if [ -d $fname ]; then
		ls $fname
	elif [ -f $fname ]; then
		if [[ $fname =~ \.sh$ ]]; then
			cat $fname
		else
			ls -l $fname
		fi
	else
		echo "$fname not regular file!"
	fi
else
	echo "$fname not exist!"
fi

