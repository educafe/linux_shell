#!/bin/bash
# here-doc simple exampe

cat <<EOF
Enter y to continue or n to stop (y[es]/n[o]) :
EOF

read answer 

case $answer in
	[yY]|[yY][eE][sS])
		echo Wait .....
		sleep 3
		;;
	[nN]|[nN][oO])
		exit ;;
	*)
		echo "Choose one..."
		;;
esac

cat << EOF
Enter y to continue or no to stop (y[es]/n[o]) :
EOF

read answer 

case $answer in
	[yY]|[yY][eE][sS])
		echo Wait .....
		sleep 3
		;;
	[nN]|[nN][oO])
		exit ;;
	*)
		echo "Choose one..."
		;;
esac	