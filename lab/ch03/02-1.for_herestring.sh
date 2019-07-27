#!/bin/bash
#To sum up given 5 numbers and determine MAX numbers among 5 them

read -a nums <<< "5 6 7 8 9"
echo ${nums[*]}
sum=0 max=0
for val in ${nums[@]}
do
	((sum += $val))
	if [ $max -lt $val ]; then
		max=$val
	fi
done
echo SUM=$sum MAX=$max
	