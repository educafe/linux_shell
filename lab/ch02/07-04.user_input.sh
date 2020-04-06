#!/bin/bash
# something that looks like array but it is not

read -p "input numbers : " nums <<< "4 5 6 7 8"

set $nums

echo $1 $2 $3 $4 $5

read -p "input numbers : " nums <<< "4:5:6:7:8"

IFS=:
set $nums

echo $1 $2 $3 $4 $5

