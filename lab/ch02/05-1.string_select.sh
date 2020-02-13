#!/bin/bash
# String Selection
var=$(grep educafe /etc/passwd)
echo $var | cut -f1 -d':'
echo $var | cut -f4 -d':'
echo
echo $(echo $var) | awk -F: '{print $1}'
echo $(echo $var) | awk -F: '{print $4}'

echo
echo $(getent passwd educafe) | awk -F: '{print $1}'
hashedpw=$(sudo getent shadow educafe)
salt=$(echo $hashedpw | cut -f 3 -d '$')
echo "salt="$salt

