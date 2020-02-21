#!/bin/bash
trap "echo caught signal SIGINT" SIGINT
trap "echo caught signal SIGQUIT" 3
trap "echo caught signal SIGTERM" 15
trap "echo caught signal SIGTSTP" TSTP
trap "echo caught signal EXIT" EXIT

trap -p SIGINT SIGQUIT SIGTERM EXIT
echo
echo "Enter any string (type 'bye' to exit or 'rel' to release)."
while true
do
	echo -e "Looping .......... \c"
	read string
	if [ "$string" = "bye" ]; then 
		break
	elif [ "$string" = "rel" ]; then
		trap SIGINT
	fi
done
echo "Exiting normally"
