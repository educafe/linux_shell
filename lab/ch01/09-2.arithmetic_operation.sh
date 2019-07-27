#!/bin/bash
#arithmetic operaiton
read -p "Input two numbers : " num1 num2

echo "num1=$num1, num2=$num2"
echo "Add = $[$num1 + $num2]"
#let "add = $num1 + $num2"
#echo "Add = "$add
echo "Sub = $[$num1 - $num2]"
#let "sub = $num1 - $num2"
#echo "Sub = $sub"
echo "Mul = $[$num1 * $num2]"
#let "mul = $num1 * $num2"
#echo "Mul = $mul"
echo "Div = $[$num1 / $num2]"
#let "div = $num1 / $num2"
#echo "Div = $div"
echo "Modulo = $[$num2 % $num1]"
#let "mod = $num1 % $num2"
#echo "Modulo = $mod"