#!/bin/bash
RED="\e[31m"
BLUE="\e[34m"
RESET="\e[00m"
if [ $UID -ne 0 ]; then
	echo "Please try again with sudo"
	exit 2
fi
echo
echo  -e $RED"Install build package for gcc, make and perl"$RESET
echo
echo  -e $BLUE"sudo apt-get install -y gcc g++ make perl"$RESET
echo
apt-get install -y build-essential perl
echo
echo  -e $RED"Install net-tools Packages"$RESET
echo
echo  -e $BLUE"sudo apt-get install -y net-tools"$RESET
echo
apt-get install -y net-tools
echo
echo  -e $RED"Install gedit plugins packages"$RESET
echo
echo  -e $BLUE"sudo apt-get install -y gedit-plugins"$RESET
echo
apt-get install -y gedit-plugins
echo
echo  -e $RED"Install apache2 Package web server"$RESET
echo
echo  -e $BLUE"sudo apt-get install -y apache2"$RESET
echo
apt-get install -y apache2
echo
echo  -e $RED"Install curl package"$RESET
echo
echo  -e $BLUE"sudo apt-get install -y curl"$RESET
echo
apt-get install -y curl
echo
echo  -e $RED"Install whois package for mkpasswd"$RESET
echo
echo  -e $BLUE"sudo apt-get install -y whois"$RESET
echo
apt-get install -y whois
echo
echo  -e $RED"Install sshopen-server package for ssh connetion"$RESET
echo
echo  -e $BLUE"sudo apt-get install -y openssh-server"$RESET
echo
apt-get install -y openssh-server
echo
echo  -e $RED"Install mail utility foe sending an email"$RESET
echo
echo  -e $BLUE"sudo apt-get install -y mailutils"$RESET
echo
apt-get install -y mailutils
echo
echo  -e $RED"Install package for looking for location of ip address"$RESET
echo
echo  -e $BLUE"sudo apt-get install -y geoip-bin"$RESET
echo
apt-get install -y geoip-bin

echo
echo >> ~/.bashrc
echo "PS1='\[\033[32m\][\u@\h:\W]\[\033[00m\]\\$ '" >> ~/.bashrc
