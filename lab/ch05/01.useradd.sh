#!/bin/bash
# Add many new user account example

echo "== Add Many New User Account =="
PASSWORD_LENGTH=8

input="userlist"

while IFS=':' read -r userid name email phone
do
	echo "add new user : $userid"
	sudo useradd -c "$name" -m $userid -s "/bin/bash"
#	echo "ubuntu" | sudo -S useradd -c "$name" -m $userid -s "/bin/bash"

	# randompw=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
	randompw=$(openssl rand -base64 48 | cut -c1-${PASSWORD_LENGTH})
	echo $userid:$randompw | sudo chpasswd
	echo "UserID:$userid created with the following password: "$randompw > $userid.pw
	printf "Dear $userid\n$(cat contents)\nlogin id : $userid\npassword : $randompw\n" | \
		mailx -s "Login ID and Password for you" $email
done < "$input"
exit 0


# -r: 백 슬래시(\'\')가 다른 문자를 escape 하도록 허용하지 않음
