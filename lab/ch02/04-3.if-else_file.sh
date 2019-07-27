#!/bin/bash
cfile=~/lab/ch02/dir/file02.conf
read -p "Input file name : " fname

if [ -e $fname ] && [ -f $fname ] && [ $fname =~ \.conf ]; then
	if [ $fname -nt $cfile ]; then
		cp $fname $fname.org	
		diff $fname $cfile > patch.diff
		patch $fname < patch.diff
	else
		echo "$fname is older than $cfile!"
	fi
else
	echo "$fname may not exist or may not be .conf file"
fi