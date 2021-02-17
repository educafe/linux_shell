#!/bin/bash
num1=10 num2=5
echo "num1=$num1, num2=$num2"

add=$(expr $num1 + $num2)
echo "Add = "$add

echo "Sub = $(expr $num1 - $num2)"

echo "Mul = $(expr $num1 \* $num2)"

echo "Div = $(expr $num1 / $num2)"

echo "Modulo = $(expr $num1 % $num2)"


