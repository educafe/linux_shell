#!/bin/bash
num1=10 num2=5
echo "num1=$num1, num2=$num2"

#let "num1 += num2"
let num1+=num2
#((num1 += num2))
echo "NUM1 = $num1"

#let "num1>>=2"
((num1>>=2))
echo "NUM1 = $num1"

#let "var=num1>>2"
((shift=num1>>2))
echo "NUM1=$num1, SHIFT=$shift"

#echo "Square = $(( num2 = num1 ** 2 ))"
#((num2 = $num1 ** 2))
let "quare = num1 ** 2"
echo "Square = $quare"

((num1++))
echo "Increase = $num1"
