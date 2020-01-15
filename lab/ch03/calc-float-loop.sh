#!/bin/bash
# arithmetic calculator supporting float point
prompt="('q' to quit)> "
while true
do
	echo -n "$prompt"
	read equation
	if [ $equation = 'q' ]; then
		break
	else
		echo $(echo "scale=4; $equation" | bc)
	fi
done