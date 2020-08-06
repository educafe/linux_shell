#!/bin/bash
RED="\e[31m"
BLUE="\e[34m"
RESET="\e[00m"
if [ $UID -ne 0 ]; then
	echo "Please try again with sudo"
	exit 2
fi

cat << EOC
$(echo -e ${RED})
Do you want to continue to install gcc, make and perl (Yes/No)?
$(echo -e $RESET)
EOC

read answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y build-essential ;;
	[nN]|[nN][oO])
		echo "You canceled installing gcc, make and perl";;
esac

cat << EOC
$(echo -e ${RED})
Do you want to continue to install net-tools for ifconfig (Yes/No)?
$(echo -e $RESET)
EOC

read answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y net-tools ;;
	[nN]|[nN][oO])
		echo "You canceled installing net-tools";;
esac

cat << EOC
$(echo -e ${RED})
Do you want to continue to install openssh-server for SSH connection (Yes/No)?
$(echo -e $RESET)
EOC

read answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y openssh-server ;;
	[nN]|[nN][oO])
		echo "You canceled installing openssh-server";;
esac

cat << EOC
$(echo -e ${RED})
Do you want to continue to install curl for url transfer (Yes/No)?
$(echo -e $RESET)
EOC

read answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y curl ;;
	[nN]|[nN][oO])
		echo "You canceled installing curl";;
esac

cat << EOC
$(echo -e ${RED})
Do you want to continue to install git (Yes/No)?
$(echo -e $RESET)
EOC

read answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y git ;;
	[nN]|[nN][oO])
		echo "You canceled installing git";;
esac

cat << EOC
$(echo -e ${RED})
Do you want to continue to install mailutils for email service (Yes/No)?
$(echo -e $RESET)
EOC

read answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y mailutils ;;
	[nN]|[nN][oO])
		echo "You canceled installing mailutils";;
esac

cat << EOC
$(echo -e ${RED})
Do you want to continue to install geoip-bin to look for location of ip (Yes/No)?
$(echo -e $RESET)
EOC

read answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y geoip-bin ;;
	[nN]|[nN][oO])
		echo "You canceled installing geoip-bin";;
esac

cat << EOC
$(echo -e ${RED})
Do you want to customize the prompt for better look (Yes/No)?
$(echo -e $RESET)
EOC

read answer

case ${answer} in
	[yY]|[yY][eE][sS])
		echo >> ~/.bashrc
		echo "PS1='\[\033[32m\][\u@\h:\W]\[\033[00m\]\\$ '" >> ~/.bashrc
		;;
	[nN]|[nN][oO])
		echo "You canceled customizing the prompt";;
esac

cat << EOC
$(echo -e ${RED})
Do you want to install samba (Yes/No)?
$(echo -e $RESET)
EOC

function samba_install() {
	apt-get install -y samba
	
	cat <<- EOC
	$(echo -e ${RED})
	You should add the user, educafe to samba. Please press Enter (password is 'ubuntu') ! 
	$(echo -e $RESET)
	EOC

	read 
	# smbpasswd -a educafe
	echo -ne "ubuntu\nubuntu" | smbpasswd -a -s educafe

	cat <<- EOC
	$(echo -e ${RED})
	You should configure samba on /etc/samba/smb.conf (Yes/No) ? 
	$(echo -e $RESET)
	EOC

	read answer
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

	cat <<- EOC
	$(echo -e ${RED})
	Now samba is ready for use. You should restart samba service.
	Please press Enter to restart samba service.  
	$(echo -e $RESET)
	EOC

	read
	systemctl restart smbd

	if [ $? -eq 0 ]; then
		echo "smbd successfully restarted"
	else
		echo "smbd not restarted for some reasons"
	fi
}

read answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y samba
		samba_install
		;;
	[nN]|[nN][oO])
		echo "You cancelled installing samba"
		;;
esac

cat << EOC
$(echo -e ${RED})
Do you want to continue to install gedit-plugins for GUI editor (Yes/No)?
$(echo -e $RESET)
EOC

read answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y gedit-plugins ;;
	[nN]|[nN][oO])
		echo "You canceled installing gedit-plugins";;
esac

cat << EOC
$(echo -e ${RED})
Do you want to continue to install sysstat (Yes/No)?
$(echo -e $RESET)
EOC

read answer

case ${answer} in
	[yY]|[yY][eE][sS])
		apt-get install -y sysstat ;;
	[nN]|[nN][oO])
		echo "You canceled installing sysstat";;
esac