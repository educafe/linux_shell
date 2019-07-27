#!/bin/bash
# Delete many existing user accounts example

echo "== Delete Many New User Account =="

input="userlist"

while IFS=':' read -r userid name
do
	echo "delete user : $userid($name)"
	sudo deluser $userid --remove-home
done < "$input"
exit 0
