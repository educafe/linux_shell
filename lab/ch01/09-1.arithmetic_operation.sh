#!/bin/bash
num1=10 num2=5
echo "num1=$num1, num2=$num2"

add=$(expr $num1 + $num2)
echo "Add = "$add
#let "add = $num1 + $num2"
#echo "Add = "$add

#echo "Sub = $(expr $num1 - $num2)"
let "sub = $num1 - $num2"
echo "Sub = $sub"

#echo "Mul = $(expr $num1 \* $num2)"
let "mul = $num1 * $num2"
echo "Mul = $mul"

#echo "Div = $(expr $num1 / $num2)"
let "div = $num1 / $num2"
echo "Div = $div"

#echo "Modulo = $(expr $num1 % $num2)"
let "mod = $num1 % $num2"
echo "Modulo = $mod"
