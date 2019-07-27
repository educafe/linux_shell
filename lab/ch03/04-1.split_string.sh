#!/bin/bash
read -p "Input username : " input
user=$(getent passwd $input)
IFS=:
split=($user)
printf "%s\n" "${split[@]}" 
awk -F"${IFS}" '{print $1}' <<< "${split}"
