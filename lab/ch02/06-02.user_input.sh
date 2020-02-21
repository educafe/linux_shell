#!/bin/bash 
#User input from shell command line

# if [[ $# < 1 ]]
if [ $# -lt 1 ]
then
	echo "Usage: $(basename $0) <args> <args>"
	exit 1
fi

if true; then
echo $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11
else
echo $1 $2 $3 $4 $5 $6 $7 $8 $9 ${10} ${11}
fi
