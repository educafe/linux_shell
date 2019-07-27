#!/bin/bash
# while Test Shell Program.

read -p "Input 5 positive numbers : " -a nums

sum=0 max=0 i=0

while (( i<${#nums[*]} ))
do
	val=${nums[$i]}
	echo "val : $val"
	(( sum += val ))
	if [ $max -lt $val ]; then
		max=$val
	fi
	i=$[ $i + 1 ]
done
echo "SUM : $sum  MAX=$max"

exit 0