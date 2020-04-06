#!/bin/bash
clear
printf "%20s %-20s\n" "1." "Display Calendar "
printf "%20s %-20s\n" "2." "File Usage Space Monitoring "
printf "%20s %-20s\n" "3." "Disk Space Moniroting "
echo
read -n1 -p "Choose what you want : " menu

case $menu in
	1)	clear
		command="/usr/bin/cal"
		$command
		;;
	2)	clear
		du -S -h /var/log /home
		echo
		;;
	3)	clear
		df -h / /media/sf_share
		;;
	*)	clear
		echo "No menu available"
		;;
esac

