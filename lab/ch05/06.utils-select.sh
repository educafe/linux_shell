#!/bin/bash
IFS=$'\n'
while true
do
	clear; echo
	PS3="
Select a menu (1-5) : "
	select menu in \
	$(cat menu | head -1) \
	$(sed -n '2p' menu) \
	$(sed -n '3p' menu) \
	$(sed -n '4p' menu) \
	$(sed -n '5p' menu) 
	do
		case $menu in
			$(cat menu | head -1))
				clear
				command="/usr/bin/cal"
				$command
				echo
				read -p "Press enter to go back to menu : "   
				break;
				;;
			$(sed -n '2p' menu))	
				clear
				du -S -h /var/log /home
				echo
				read -p "Press enter to go back to menu : "   
				break;
				;;
			$(sed -n '3p' menu))	
				clear
				df -h / /media/sf_share
				echo
				read -p "Press enter to go back to menu : "   
				break;
				;;
			$(sed -n '4p' menu))	
				clear
				echo "Please wait ....."
				top -b -n5 | fgrep "Cpu(s)" | awk -F',' '{ print $1 $2 $3 $4 }' 
				echo
				read -p "Press enter to go back to menu : "   
				break;
				;;
			*)	
				exit
				;;
		esac
	done
done
