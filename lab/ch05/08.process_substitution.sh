#!/bin/bash

# Filename: filestat.sh

if [ -z $1 ]; then
	echo "Usage : $0 <filepath>";
	exit
fi

DISPLAY=true
path=$1
exec 2> /dev/null

declare -A filestat;

while read line;
do
	ftype=`file -b "$line" | cut -d, -f1`
	((filestat["$ftype"]++));
	
if $DISPLAY; then
	if [ "$ftype" = 'ELF 64-bit LSB executable' ]; then
		echo "ELF=$line"
	fi
	if [ "$ftype" = 'POSIX shell script' ]; then
		echo "SCRIPT=$line"
	fi
	if [ "$ftype" = 'Python script' ]; then
		echo "PYTHON=$line"
	fi
fi
done < <(find $path -type f -print)

echo ============ File types and counts =============

for ftype in "${!filestat[@]}";
do
	echo $ftype : ${filestat["$ftype"]}
done


