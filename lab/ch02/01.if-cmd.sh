#!/bin/bash
# if~then Test Shell Program.

var=$(grep linuz /etc/passwd)
if [ $? -eq 0 ]; then
	echo $var
else
	echo "Error"
fi

if ls -ld /usr/bin > var1 2>var2; then
	echo $(cat var1)
else
	cat var2
fi

if grep linux /etc/passwd > /dev/null; then
	echo "True"
else
	echo "False"
fi
