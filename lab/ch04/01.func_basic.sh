#!/bin/bash
# using a function in a script
source $HOME/snippets/color

function func1 {
	echo "function func1 has been called"
	sleep 1
}
count=1
while [ $count -le 5 ]
do
	func1
	count=$[ $count + 1 ]
done
echo -e ${UGREEN}"End of the Loop"$RESET
func1
# func2
echo -e ${URED}"End of the script"$RESET

# function definition should be declared before it is called
# function func2 {
	# echo "This is an example of a function"
# }

