#!/bin/bash
# function array-arg Test Shell Program.
source $HOME/snippets/color

function double_array {
	echo -e $BLUE"func_double_array(args:$@)"$RESET>&2
	local data=(${@})
	elements=$[$# - 1]
	for (( i=0; i<=elements; i++ ))
	do
		local newdata[i]=$[ ${data[i]} * 2]
	done
	echo ${newdata[*]}
}

echo -e $RED"${FUNCNAME[0]} routine begins"$RESET
data1=(1 2 3 4 5  10 15 20 25 30)
echo "data1:${data1[*]}"

ret=$(double_array ${data1[*]})
echo -e $UGREEN"	result of double_array : ${ret[*]}"$RESET

echo -e $RED"${FUNCNAME[0]} routine ends"$RESET
exit 0
