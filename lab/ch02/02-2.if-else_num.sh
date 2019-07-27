#!/bin/bash
#To sum up given 5 numbers and determine MAX numbers among 5 them

read -p "Input 5 numbers : " num1 num2 num3 num4 num5
echo $num1 $num2 $num3 $num4 $num5
sum=0 max=0
#sum=$[$num1 + $num2 + $num3 + $num4 + $num5]
sum=$((num1+num2+num3+num4+num5))
if [ $max -lt $num1 ]; then
	max=$num1;
else
	max=$max
fi
if [ $max -gt $num2 ]; then
	max=$max;
else
	max=$num2
fi
if [[ $max < $num3 ]]; then
	max=$num3;
else
	max=$max
fi
if [[ max > num4 ]]; then
	max=$max;
else
	max=$num4
fi
if (( max < num5 )); then
	max=$num5;
else
	max=$max
fi
	
echo SUM=$sum MAX=$max
	