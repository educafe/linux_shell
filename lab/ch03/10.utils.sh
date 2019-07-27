#!/bin/bash

while true
do
	clear
	printf "\n\n\n"
	printf "%20s %-20s\n" "1." "basic arithmetic & bitwise operation"
	printf "%20s %-20s\n" "2." "float arithmetic operation"
	printf "%20s %-20s\n" "3." "find ascii code in hex, decimal, octal"
	printf "%20s %-20s\n" "q." "quit"
	echo
	read -p "Choose what you want : " menu

	case $menu in
		1)	clear
			./calc-basic.sh ;;
		2)	clear
			./calc-float.sh ;;
		3)	clear
			./find-ascii.sh ;;
		q)	
			break ;;
		*)
			echo "No menu available" ;;
	esac
done