#!/bin/bash
echo "Executing script $0"
echo $1 $2 $3
set hana dul ses
echo "One two three in Korean are:"
echo "$1"
echo "$2"
echo "$3"
textline="name phone address birthdate salary"
set $textline
echo "$*"
echo '$1 = '$1' and $4 = '$4''