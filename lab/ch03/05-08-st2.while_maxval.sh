#!/bin/bash
# while Test Shell Program.

read -p "Input 5 positive numbers : " num1 num2 num3 num4 num5 <<< "12 34 56 78 90"

sum=0
max=0
i=1

for i in 1 2 3 4 5
do
	echo $((num$i))
done


while (( i<=5 ))
do
	(( sum += $((num$i)) ))
	if [ $max -lt $((num$i)) ]
	then 
		max=$((num$i))
	fi
	((i++))
done
echo "sum : $sum"
echo "max num : $max"

exit 0
