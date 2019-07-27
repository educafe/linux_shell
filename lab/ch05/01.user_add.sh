#!/bin/bash
# Add many new user account example

echo "== Add Many New User Account =="

input="userlist"

while IFS=':' read -r userid name
do
	echo "add new user : $userid"
	sudo useradd -c "$name" -m $userid -s "/bin/bash"
#	echo "ubuntu1604" | sudo -S useradd -c "$name" -m $userid -s "/bin/bash"
#	echo "ubuntu1604" | sudo -S adduser -c "$name" -m $userid -s "/bin/bash"

	randompw=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
	echo $userid:$randompw | sudo chpasswd
	echo "UserID:$userid has been created with the following password:" $randompw > $userid

done < "$input"
exit 0


# -r: 백 슬래시(\'\')가 다른 문자를 escape 하도록 허용하지 않음
