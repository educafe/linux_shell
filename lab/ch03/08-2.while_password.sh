#!/bin/bash
# login script
read -p "Enter user name : " loginname
getent passwd $loginname >& /dev/null
if [ $? != 0 ]; then
	echo "$loginname user is not registered"
	exit 100;
else
	hashedpw=$(sudo getent shadow $loginname)
	salt=$(echo $hashedpw | cut -f 3 -d '$')
#	echo $salt
	rpasswd=$(echo $hashedpw | cut -f 4 -d '$' | cut -f 1 -d ':')
#	echo "Registered paw : "$rpasswd
fi

unset password
prompt="Enter Password : "
count=0;

while read -p "$prompt" -r -s -n 1 char
do
    # if [[ $char == $'\0' ]]
	# if [ $char = $'\0' ]			# [ ]문법으로는 null string과는 비교할 수 없음
	if [ -z $char ]				
	
    then
        break
    fi

	if [[ $char == $'\177' ]];  then
        prompt=$'\b \b'
        password="${password%?}"
    else
        prompt='*'
        password+="$char"
    fi
done
echo

#if [ ${#password} -lt 8 ]
#	then echo The length of password should be greater than or equal to 8
#	exit 200
#fi

inputpw=$(mkpasswd -m sha-512 -S $salt $password)

gpasswd=$(echo $inputpw | cut -f 4 -d '$')
#echo "Input password : "$gpasswd
echo
if [ $gpasswd = $rpasswd ]; then
	echo "Welcome to Shell Scripting"
else
	echo "try again"
fi

#echo "Password=$password"