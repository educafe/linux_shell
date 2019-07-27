#!/bin/bash

clear
printf "\n\n\n"
prompt="> "
printf "%20s %-20s\n" "1." "basic arithmetic operation "
printf "%20s %-20s\n" "2." "float arithmetic operation "
printf "%20s %-20s\n" "3." "find ascii code in hex, decimal, octal "
echo
read -p "Choose what you want : " menu
if [ $menu -eq 1 ] ; then
	./cal-basic.sh
elif [ $menu -eq 2 ]; then 
	./cal-float.sh
else
	./find-ascii.sh
fi
