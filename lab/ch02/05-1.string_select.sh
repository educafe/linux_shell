#!/bin/bash
var1="a+b+c"
var2="d-e-f"
var3="g,h,i"
IFS=+
echo $var1 					# a b c
echo $var2 					# d-e-f
echo $var3 					# g,h,i
echo

IFS="-"
echo $var1 					# a+b+c
echo $var2 					# d e f
echo $var3 					# g,h,i
echo

IFS=","
echo $var1 					# a+b+c
echo $var2 					# d-e-f
echo $var3 					# g h i
echo