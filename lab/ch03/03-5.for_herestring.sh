#!/bin/bash
#To sum up given 5 numbers and determine MAX numbers among 5 them
string=$(cat ./dir/numbers)

read nums <<< "$string"
#echo ${nums[*]}
echo $nums
sum=0 max=0
#for val in ${nums[@]}
for val in $nums
do
	((sum += $val))
	if [ $max -lt $val ]; then
		max=$val
	fi
done
echo SUM=$sum MAX=$max
	