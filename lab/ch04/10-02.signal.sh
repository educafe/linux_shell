#!/bin/bash
#signals that are ignored by default in shell script
source $HOME/lab/snippets/color

function signal_handler {
	# echo $1
	echo -e $RED"Signal $1 trapped"$RESET
	echo $$ $BASHPID
}

# trap "signal_handler SIGINT" SIGINT SIGQUIT SIGTERM
trap "signal_handler INT" INT
trap "signal_handler QUIT" QUIT
# trap "signal_handler TERM" TERM
trap "echo Good Bye" EXIT
i=0;
while true
do
	echo "Script is running --- $i"
	i=$[ $i + 1 ]
	sleep 1
	if [ $i -eq 10 ]
		then	
			echo -e $RED"signal SIGINT trap removed"$RESET
			trap  -- SIGINT
	fi
done
