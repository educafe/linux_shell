#!/bin/bash

clear
printf "\n\n\n"
prompt="> "
printf "%20s %-20s\n" "1." "basic arithmetic operation "
printf "%20s %-20s\n" "2." "float arithmetic operation "
printf "%20s %-20s\n" "3." "find ascii code in hex, decimal, octal "
echo
read -p "Choose what you want : " menu

case $menu in
	1)	clear
		./cal-basic.sh
		;;
	2)	clear
		./cal-float.sh
		;;
	3)	clear
		./find-ascii.sh
		;;
	*)	clear
		echo "No menu available"
		;;
esac