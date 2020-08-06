#!/bin/bash
USAGE="usage: $0 -x <arg> -y <arg>"
#while getopts :x:y: opt				# : at front means silent mode. OPTARG stores next character and
										# 'option requires an argument -- y' err will be suppressed
# while getopts :xy: opt				# x is just an option y option requires argument
while getopts x:y opt 					# x option requires argument and y is just an option
# while getopts :x:y: opt				# x and y both options require argument each
do
	case $opt in
		x)
			OPT1=$OPTARG
			;;
		y)
			OPT2=$OPTARG
			;;
		?)
			echo $USAGE
			exit 2 ;;
	esac
done

if [ -z "$OPT1" -a -z "$OPT2" ]; then
 	echo $USAGE
else
	echo OPTARG1=$OPT1
	echo OPTARG2=$OPT2
fi
