#!/bin/bash
# string check for login and password

read -p "Login : " login
read -p "Password : " -s password

if [ $login = linux ]; then
	if [ $password = ubuntu ]; then
		echo "Welcome to Shell Programming"
	else
		echo "Password not correct!!"
	fi
else
	echo "Login ID not correct!!"
fi

#if [ $login = $USER ] && [ $password = ubuntu ]; then
#	echo "Welcome to Shell Programming"
#else
#	echo "Login ID or Password not correct!!"
#fi