#!/bin/bash
num1=10; num2=5
echo NUM1:$num1 NUM2:$num2

add=$((num1+num2))
# ((add = num1 + num2))
echo "Add = $add"

echo "Sub = $((num1-num2))"
#echo "Sub = $((sub = num1 - num2))"

echo "Mul = $(($num1*$num2))"

echo "Div = $((num1/num2))"

echo "Mod = $((num1 % num2))"


