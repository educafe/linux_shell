#!/bin/bash 
# function array-arg Test Shell Program.
source $HOME/snippets/color

function sum_array {
	echo -e $BLUE"func_sum_array(args:$@)"$RESET >&2
	local data="$@"			# or local data = $@
#	local data=(${@})		# or local data =("$@"} is the same
	for i in ${data[*]}		# shell will expand array variable of local data into a list
	do
		val=$i
		sum=$[ $sum + $val ]
		# (( sum += val ))
		
	done
	echo $sum
}

echo -e $RED"${FUNCNAME[0]} routine begins"$RESET
data="10 11 12 13 14"
echo "data:${data[*]}"

ret=$(sum_array ${data[*]})
echo -e $UGREEN"	result of sum_array : $ret"$RESET

echo -e $RED"${FUNCNAME[0]} routine ends"$RESET
exit 0
