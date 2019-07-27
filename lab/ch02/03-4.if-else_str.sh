#!/bin/bash
prompt="Password : "
#while read -p "$prompt" -N 1 char
#do
read -s -p "$prompt" -n 1 char

if [ -z $char ]; then
	echo "End of Input"
else
	prompt="*"
	password+=$char
	read -s -p "$prompt" -n 1 char
	if [[ $char = $'\0' ]]; then
		echo 
		echo "$password"
	else
		prompt="*"
		password+=$char
		read -s -p "$prompt" -n 1 char
		echo
		echo $password
	fi
fi


# awk 'BEGIN{for( i=97; i<=122;i++) printf "%c %d\n",i,i }' | head -n 5  

# To print character including null character, 
# put $ sign in front of character value like $'\0'