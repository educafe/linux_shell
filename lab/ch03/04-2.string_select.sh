#!/bin/bash
# String Selection
var=user:123:321:/home/linux:/bin/bash
to=$(awk -F: '{print NF}' <<< "${var}")
for ((i=1; i<=$to; i++))
do
	echo $var| cut -f$i -d':'
done

user=$(getent passwd $input)
IFS=:
split=($user)
printf "%s\n" "${split[@]}" 
awk -F"${IFS}" '{print $1}' <<< "${split}"