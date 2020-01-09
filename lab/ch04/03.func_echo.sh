	
	#!/bin/bash
	# using the echo to return a value
	source $HOME/lab/snippets/color

	function double {
		echo "Function double has been called" >&2	rr
		read -p "Enter a value: " value
		# echo $[ $value * 2 ]					
		printf "$[ $value * 2 ]" 	
		local result=$[ $value * 2 ]
		echo $result
	#	printf "$result"
	} 

	echo -e ${URED}"Main routine begins"$RESET
	ret=$(double)					
	echo "The returned new value is : $ret"
	echo -e ${URED}"Main routine ends"$RESET

