#!/bin/bash
# Add many new user account example

echo "== Add Many New User Account =="
PASSWORD_LENGTH=8

input="userlist"

while IFS=':' read -r userid name email phone
do
	echo "add new user : $userid"
	sudo useradd -c "$name" -m $userid -s "/bin/bash"
	randompw=$(openssl rand -base64 48 | cut -c1-${PASSWORD_LENGTH})
	echo $userid:$randompw | sudo chpasswd
	echo "UserID:$userid created with the following password: "$randompw > $userid.pw
	mailx -s "Login ID and Password for you" $email << End_of_mail
	Dear $userid
	Below please find your login id and temporary password.
	Please login and change the password with your own as soon as possible.
	login_id : $userid
	password : $randompw
	End_of_mail
done < "$input"
exit 0


# -r: 백 슬래시(\'\')가 다른 문자를 escape 하도록 허용하지 않음
