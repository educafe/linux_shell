#!/bin/bash
#stand output redirection

grep educafe /etc/passwd > /dev/null
ls ~/lab > file01.txt

ls -l /bin/usr 2> err

file="file01.txt"
cat $file

read line1 < $file
echo $line1

