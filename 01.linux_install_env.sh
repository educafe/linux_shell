#!/bin/bash
if [ $UID -ne 0 ]; then
	echo "Please try again with sudo"
	exit 2
fi

echo
tput setaf 4
cat << EOC
Do you want to continue to install gcc, make and perl (Yes/No)?
EOC

echo
tput setaf 2
read -sn1 answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y build-essential ;;
	[nN]|[nN][oO])
		echo "You canceled installing gcc, make and perl";;
esac

echo
tput setaf 4
cat << EOC
Do you want to continue to install net-tools for ifconfig (Yes/No)?
EOC

echo
tput setaf 2
read -sn1 answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y net-tools ;;
	[nN]|[nN][oO])
		echo "You canceled installing net-tools";;
esac

cat << EOC
Do you want to continue to install openssh-server for SSH connection (Yes/No)?
EOC

read -sn1 answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y openssh-server ;;
	[nN]|[nN][oO])
		echo "You canceled installing openssh-server";;
esac

echo
tput setaf 4
cat << EOC
Do you want to continue to install curl for url transfer (Yes/No)?
EOC

echo
tput setaf 2
read -sn1 answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y curl ;;
	[nN]|[nN][oO])
		echo "You canceled installing curl";;
esac

echo
tput setaf 4
cat << EOC
Do you want to continue to install git (Yes/No)?
EOC

echo
tput setaf 2
read -sn1 answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y git ;;
	[nN]|[nN][oO])
		echo "You canceled installing git";;
esac

echo
tput setaf 4
cat << EOC
Do you want to continue to install mailutils for email service (Yes/No)?
EOC

echo
tput setaf 2
read -sn1 answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y mailutils ;;
	[nN]|[nN][oO])
		echo "You canceled installing mailutils";;
esac

echo
tput setaf 4
cat << EOC
Do you want to continue to install geoip-bin to look for location of ip (Yes/No)?
EOC

echo
tput setaf 2
read -sn1 answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y geoip-bin ;;
	[nN]|[nN][oO])
		echo "You canceled installing geoip-bin";;
esac

echo
tput setaf 4
cat << EOC
Do you want to customize the prompt for better look (Yes/No)?
EOC

echo
tput setaf 2
read -sn1 answer

case ${answer} in
	[yY]|[yY][eE][sS])
		echo >> ~/.bashrc
		echo "PS1='\[\e]0;\w\a\]\n\[\033[32m\][\u@\h:\[\033[34m\]\W\[\033[32m\]]\[\033[00m\]\\$ '" >> /home/educafe/.bashrc

		;;
	[nN]|[nN][oO])
		echo "You canceled customizing the prompt";;
esac

echo
tput setaf 4
cat << EOC
Do you want to install samba (Yes/No)?
EOC

echo
tput setaf 2
function samba_install() {
	apt-get install -y samba
	
	echo
	tput setaf 4
	cat <<- EOC
	You should add the user, educafe to samba. Please press Enter (password is 'ubuntu') ! 
	EOC
	
	echo
	tput setaf 2
	read 
	# smbpasswd -a educafe
	echo -ne "ubuntu\nubuntu" | smbpasswd -a -s educafe

	echo
	tput setaf 4
	cat <<- EOC
	You should configure samba on /etc/samba/smb.conf (Yes/No) ? 
	EOC

	echo
	tput setaf 2
	read -sn1 answer
	case ${answer} in
		[yY]|[yY][eE][sS])
			echo >> /etc/samba/smb.conf
			echo "[Share]" >> /etc/samba/smb.conf
			echo "path=/home/educafe/">> /etc/samba/smb.conf
			echo "browseable=Yes" >> /etc/samba/smb.conf
			echo "writeable=Yes" >> /etc/samba/smb.conf
			echo "only guest=no" >> /etc/samba/smb.conf
			echo "create  mask=0664" >> /etc/samba/smb.conf
			echo "directory mask=0775" >> /etc/samba/smb.conf
			echo "public=no" >> /etc/samba/smb.conf
			;;
		[nN]|[nN][oO])
			echo "The prompt remain unchanged";;
	esac

	echo
	tput setaf 4
	cat <<- EOC
	Now samba is ready for use. You should restart samba service.
	Please press Enter to restart samba service.  
	EOC

	echo
	tput setaf 2
	read
	systemctl restart smbd

	if [ $? -eq 0 ]; then
		echo "smbd successfully restarted"
	else
		echo "smbd not restarted for some reasons"
	fi
}

echo
tput setaf 2
read -sn1 answer

case ${answer} in
	[yY]|[yY][eE][sS])
		# apt-get install -y samba
		samba_install
		;;
	[nN]|[nN][oO])
		echo "You cancelled installing samba"
		;;
esac

echo
tput setaf 4
cat << EOC
Do you want to continue to install gedit-plugins for GUI editor (Yes/No)?
EOC

echo
tput setaf 2
read -sn1 answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y gedit-plugins ;;
	[nN]|[nN][oO])
		echo "You canceled installing gedit-plugins";;
esac

echo
tput setaf 4
cat << EOC
Do you want to continue to install sysstat (Yes/No)?
EOC

echo
tput setaf 2
read -sn1 answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y sysstat ;;
	[nN]|[nN][oO])
		echo "You canceled installing sysstat";;
esac
