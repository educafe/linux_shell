#!/bin/bash
unset permission
read -p "Input file path : " fname

if [ -e $fname -a -f $fname ]; then
	if [ -O $fname ]; then
		if [ -r $fname ]; then
			permission+=r
		else
			permission+='-'
		fi
		if [ -w $fname ]; then
			permission+=w
		else
			permission+=-
		fi
		if [ -x $fname ]; then
			permission+=x
		else
			permission+=-
		fi
		echo "$fname file's Permission : $permission"
	else
		echo "$fname is not owned by $USER!"
	fi
else
	echo "$fname not exist or not a regular file"
fi
