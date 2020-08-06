#!/bin/bash
# while Test Shell Program.

read -p "Input 5 positive numbers : " nums <<< "34 56 78 90 12"

sum=0
max=0

for val in $nums
do
	echo "val : $val"
	(( sum += val ))
	if [ $max -lt $val ]
	then 
		max=$val
	fi
done

echo "sum : $sum"
echo "max num : $max"

exit 0
