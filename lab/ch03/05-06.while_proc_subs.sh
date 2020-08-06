#!/bin/bash

# Process substitution
PROC_SUBS=true
echo "Main BashID = " $BASHPID
if $PROC_SUBS; then
	while read line;
	do
			data+="$line "
	done < <(cat file)
else
	cat file | while read line;
	do
			data+="$line "
			echo "Inside While BashID = " $BASHPID
	done
	echo "After While BashID = " $BASHPID
fi

for d in $data
do
	echo $d
done


#Unnamed pipe forks the second command as a child process and
#provides communication channel from previous command (parent process) to child (following process)

# diff <(ls /bin) <(ls /usr/bin)