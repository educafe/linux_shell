#!/bin/bash
USAGE="usage: $0 -x -y"
while getopts xy: opt_char
# while getopts :x:y opt_char
# while getopts :x:y: opt_char
do
	case $opt_char in
		x)
			echo "Option x was called. Argument of option is $OPTARG"
			;;
		y)
			echo "Option y was called. Argument of option is $OPTARG"
			;;
		?)
			echo "$OPTARG is not a valid option."
			echo "$USAGE"
			;;
	esac
done
