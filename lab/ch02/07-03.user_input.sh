#!/bin/bash
# here-string

awk '{print $1}' <<< "hello world good morning"
awk '{print $2}' <<< "hello world good morning"
awk '{print $3}' <<< "hello world good morning"
awk '{print $4}' <<< "hello world good morning"

read -p "Input 5 numbers : " nums <<< "4 5 6 7 8"
echo $nums | awk -F" " '{ print $1, $2, $3, $4 }'
awk ' BEGIN { FS=":" } { print $1, $2, $3} END {print NF}' <<< "4:5:6:7:8"

