#!/bin/bash
# login script
read -p "Enter user name : " uname
if [ -z $uname ]; then
	echo "Please input username to login"
	exit 100;
fi

unset password
prompt="Enter Password : "
count=0;

while read -p "$prompt" -r -s -n 1 char
do
	if [ -z $char ]; then			
        break
	elif [[ $char == $'\177' ]];  then
        prompt=$'\b \b'
        password="${password%?}"
    else
        prompt='*'
        password+="$char"
    fi
done
echo

echo "Password=$password"