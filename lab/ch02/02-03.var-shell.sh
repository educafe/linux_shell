#!/bin/bash
#shell built-in variable

# Assign a value to System variable
echo "PATH = "$PATH
echo "PWD = "$PWD
${BashPID:=$BASHPID}
ps ax | grep $BashPID | head -1
# echo "Current Process Name = " $( ps -p $$ | awk '{ print $4 }' )
ps -p $$ 
echo -n "The real shell is : "
realpath /proc/$$/exe
PATH=$PWD:$PATH

echo "[$0] vs. [${BASH_SOURCE[0]}]"
