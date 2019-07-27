#!/bin/bash
#Input string and save it to a variable

#Reading variables from user input
read
echo $REPLY

echo -n "Input a value of a variable : "
read var
echo $var

read -p "Input your name and surname : " name surname
echo "$surname, $name"

read -s -p "Input password : " password
echo $password