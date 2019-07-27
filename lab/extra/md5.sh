if [ $# -lt 1 ]
then
	echo "Usage : $0 <filename>"
	exit 
fi

cat $1 | md5sum | awk '{print $1}'

#sha1sum, sha256sum, sha512sum can be used as well
