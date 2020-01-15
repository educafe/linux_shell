#!/bin/bash
#To sum up given 5 numbers and determine MAX numbers among 5 them

read -p "Input 5 numbers : " nums
echo $nums
#	set $nums
echo $*
sum=0 max=0
for val in $nums
#	for val in $*
do
	((sum += $val))
	if [ $max -lt $val ]; then
		max=$val
	fi
done
echo SUM=$sum MAX=$max
	
	