#!/bin/bash
# something look like array but it is not

#nums=(1 hello world 4 5)
nums="1 2 3 4 5"
#read -p "input numbers : " nums

set $nums

echo $1 $2 $3 $4 $5

