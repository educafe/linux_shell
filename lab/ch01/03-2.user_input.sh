#!/bin/bash
# something look like array but it is not

#nums=(1 hello world 4 5)
nums="1 2 3 4 5"
#read -p "input numbers : " nums
i=1
echo nums[0]:${nums[0]}
echo nums[1]:${nums[1]}
echo nums[3]:${nums[3]}
echo nums[*]:${nums[*]}
echo nums[@]:${nums[@]}

echo ${nums[@]}			#nums=(1 2 3 4 5)
#echo $nums				#nums="1 2 3 4 5"
i=0

#for var in $nums			#nums="1 2 3 4 5"
for var in ${nums[*]}	#nums=(1 2 3 4 5)
do
	echo $var
	num[$i]=$var
#	num$i=$var
	((i++))
done

#num=10
for i in {1..6}
do
	echo num$i=${num[$i]}
#	echo num$i=$num[$i]
	
done
