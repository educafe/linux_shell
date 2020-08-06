#!/bin/bash
# while Test Shell Program.

read -p "Input 5 positive numbers : " nums <<< "12 34 56 78 90"

sum=0
max=0

set $nums
# echo -e "$1\n$2\n$3\n$4\n$5"
# echo -e "$1\n$2\n$3\n$4\n$5" | while read num
while read num 
do
	echo $num
	(( sum += $num ))
	if [ $max -lt $num ]
	then 
		max=$num
	fi
done < <(echo -e "$1\n$2\n$3\n$4\n$5")
echo "sum : $sum"
echo "max num : $max"

exit 0
