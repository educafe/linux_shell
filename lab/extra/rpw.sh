#Random password generation in given size
if [ $# -lt 1 ]
then
	echo "Usage : $0 <passwd-length in numbers>"
	exit
fi

head /dev/urandom | tr -dc A-Za-z0-9 | head -c $1
echo
