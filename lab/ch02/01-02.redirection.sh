#!/bin/bash
#stand output redirection

exec > log
exec 2> err
# exec &> log
grep educafe /etc/passwd
echo
ls -l ~/lab
echo

ls -l /bin/usr

file="file01.txt"
echo $(cat $file)

read line
echo $line

read line < $file
echo new$line

