#!/bin/bash
# passing parameters to a function
source $HOME/snippets/color

function add {
	r_add=$[$1 + $2]
	# r_add=0;
	# for int
	# do
		# r_add=$[$r_add + $int]
	# done
	echo $r_add
}

function mutiply {
	# mul=$[$1 * $2]
	var=1
	for int
	do
		((var=($var * $int)))
	done
	echo $var
} 

echo -e $RED"Main begins"$RESET 

if [  $# -lt 1 ]
then
	echo -e ${RED}"Usage: $0 num1 num2"$RESET
	exit 1
else
	value=$(add $*)
	echo -e ${URED}"The add result is $value"$RESET
	# value=$(mutiply)
	# value=$(mutiply $1 $2)
	value=$(mutiply $*)
	echo -e ${URED}"The mul result is $value"$RESET

fi
