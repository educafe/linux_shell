#!/bin/bash
# for Test Shell Program.

read -p "Input 5 positive numbers : " nums

sum=0
max=0

set $nums
echo $1 $2 $3 $4 $5

(( sum += $1 ))
if [ $max -lt $1 ]
then 
		max=$1
fi

(( sum += $2 ))
if [ $max -lt $2 ]
then 
		max=$2
fi

(( sum += $3 ))
if [ $max -lt $3 ]
then 
		max=$3
fi

(( sum += $4 ))
if [ $max -lt $4 ]
then 
		max=$4
fi

(( sum += $5 ))
if [ $max -lt $5 ]
then 
		max=$5
fi
echo "sum : $sum"
echo "max num : $max"

exit 0