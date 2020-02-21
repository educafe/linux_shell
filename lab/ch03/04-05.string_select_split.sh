#!/bin/bash
# String Selection and split 
OLDIFS=IFS
var=$(getent passwd $input)
IFS=:
# split=($var)
# printf "%s\n" "${split[@]}" 

IFS=OLDIFS
to=$(awk -F: '{print NF}' <<< "${var}")
for ((i=1; i<=$to; i++))
do
	echo $var| cut -f$i -d':'
done

