#!/bin/bash

prompt="('q' to quit)> "
while true
do
	echo -n "$prompt "
	read equation
	if [ $equation = 'q' ]; then
		break;
	else
		echo $(($equation))
	fi
done