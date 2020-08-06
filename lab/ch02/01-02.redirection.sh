#!/bin/bash
#stand output redirection

exec > log
exec 2> err
grep educafe /etc/passwd
echo
ls -l ~/lab
echo

ls -l /bin/usr
exec >&-
exec 2>&-

file="file01.txt"
echo $(cat $file)

read line
echo $line

read line < $file
echo new$line

