#!/bin/bash
num1=10; num2=5

#echo "Add = $(($num1 + $num2))"
#add=$((num1+num2))
#((add = num1 + num2))
let add=num1+num2
echo "Add = $add"

#echo "Sub = $((num1-num2))"
#echo "Sub = $((sub = num1 - num2))"
let "sub = num1 - num2"
echo "Sub = $sub"

#echo "Mul = $(($num1*$num2))"
let mul=num1*num2
echo "Mul = $mul"

#echo "Div = $((num1/num2))"
let div=num1/num2
echo "Div = $div"

#echo "Mod = $((num1 % num2))"
let mod=num1%num2
echo "Mod = $mod"
