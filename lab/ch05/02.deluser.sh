#!/bin/bash
# Delete many existing user accounts example

echo "== Delete Many New User Account =="

input="userlist"

while IFS=':' read -r userid name email phone
do
	echo "delete user : $userid($name)"
	sudo userdel -r $userid 
done < "$input"
exit 0
