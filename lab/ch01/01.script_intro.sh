#!/bin/bash

	# echo The time and date are:
	date

	# echo "Let's see who's logged into the system:"
	who
	echo
	#echo "hello world"
	#printf 'hello world'

	echo 'hello world\n'
	printf 'hello world\n'
	echo

	var=Hello

	echo "$var World"			# echo '$var World' will show different output
	printf "$var World\n"
	printf "%s World\n" $var
	echo

	where=Seoul
	year=10
	printf "I have lived in $where for $year years\n"
	printf 'I have lived in %s for %d years\n' $where $year

	printf '%-20d\t %10s\n' $year $where





