source $HOME/snippets/color
function signal_untrap {
	for sig
	do	
		echo -e $PURPLE"Signal $sig untrapped"$RESET
		trap -- $sig
	done
}

function signal_trap {
	sig_func="$1"
	shift
	echo -e $RED"Sig Function : $sig_func"$RESET
	for sig 
	do
		echo -e $GREEN"Captured signal = $sig"$RESET
		trap "$sig_func  $sig" "$sig"
	done
}

function signal_handler {
	echo -e $BLUE "Signal $1 is trapped"$RESET
}

signal_trap signal_handler QUIT TERM HUP INT

i=0;
# while [ $i -lt 20 ] 
while true
do
	echo "Script is running --- $i"
	i=$[ $i + 1 ]
	sleep 1
	if [ $i -eq 10 ]
		then	
			echo "signal SIGINT trap removed"
			signal_untrap INT HUP
	fi
done
exit 0
