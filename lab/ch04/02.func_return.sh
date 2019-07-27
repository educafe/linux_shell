#!/bin/bash
# using value to return a value.
source $HOME/snippets/color

function func1 {
	echo "function func1() has been called"
	read -p "Input file name -> " fname
	ls -l $fname
	# echo $fname		# to see what value is returned when execute this line
	# ret=$?
	# return $ret			# return command can return valus using an interger variable
}

func2() {
	echo "function func2() has been called."
	ls $fname
	return 5				# return command can return a specific exit status as desired
	# return 256			# return command can only return value less than 255
}

function func3 {
	echo "Good Job"
}

echo -e ${URED}"main routin() begins"$RESET
func1
echo -e "	${GREEN}function func1 exit status  -> $?"$RESET
func2
# func3 					# to test to see if return value of func2 is lost
echo -e "	${GREEN}function func2 exit status  -> $?"$RESET
echo -e ${URED}"main routine ends"$RESET

exit 0

#Inside the script including functions, all variables are shared
#exit status always represents the status of execution of the last command in the function.
#return command returns the specific exit status but it requires immediate collection of return value
#return command can not return value which is greater than 255 

