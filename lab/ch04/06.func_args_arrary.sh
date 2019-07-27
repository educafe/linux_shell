#!/bin/bash 
# function array-arg Test Shell Program.
source $HOME/snippets/color

function sum_array {
	echo -e $BLUE"func_sum_array(args:$@)"$RESET>&2
	# local data="$@"								# or local data = $@
	local data=(${@})							# or local data =("$@"} is the same
	for i in ${data[*]}							# shell will expand array variable of locat data into a list
	# repeat=$[$# - 1]
	# for (( i=0, sum=0; i<=repeat; i++ ))	# c-sytle, 
	do
		val=$i
		echo $val >&2
		sum=$[ $sum + $val ]
		
		# val=${data[i]}							#to pick array value by index - c-style
		# (( sum += val ))
		
	done
	echo $sum
}

echo -e $RED"${FUNCNAME[0]} routine begins"$RESET
data1=(1 2 3 4 5)
data2=(10 11 12 13 14)
echo "data1:${data1[*]}"
echo "data2:${data2[*]}"

ret=$(sum_array ${data1[*]})
echo -e $UGREEN"	result of sum_array : $ret"$RESET

ret=$(sum_array ${data2[*]})
echo -e $UGREEN"	result of sum_array : $ret"$RESET

echo -e $RED"${FUNCNAME[0]} routine ends"$RESET
exit 0
