#!/bin/bash
# login script
read -p "Enter user name : " uname
if [ -z $uname ]; then
	echo "Please input username to login"
	exit 100;
fi

echo -n "Enter Password : "

while read -r -s -n 1 char
do
	if [ -z $char ]; then			
		break
	elif [[ $char == $'\177' ]];  then
		if [ ${#password} -ne 0 ]; then
			printf $'\b \b'
			password="${password%?}"
		fi
	else
		printf '*'
		password+=$char
	fi
done
echo

echo "Password=$password"

