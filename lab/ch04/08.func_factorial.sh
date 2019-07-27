#!/bin/bash
# recursive function Test Shell Program.
source $HOME/snippets/color

function fac {
	if [ $1 -eq 1 ]
	# if (( $1 == 1))
	then
		echo 1
	else
		local tmp=$[$1 - 1]
		local rst=$(fac $tmp)
		# sleep 5
		echo $[$rst * $1]
	fi
}

# factorial=1
# for (( number = 1; number <= $1 ; number++ ))
# do
	# factorial=$[ $factorial * $number ]
# done
# echo "Factorial : $factorial"

# echo -e $RED"${FUNCNAME[0]} routin begins."$RESET
read -p "Input Positive Number : " num

fac $num
# rst=$(fac $num)
# rst=$(fac $1)
echo "	result of $num factorial :  $rst"
echo -e $RED"${FUNCNAME[0]} routin ends."$RESET
exit 0
