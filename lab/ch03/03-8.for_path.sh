	
	#!/bin/bash
	# IFS test

	list=$(echo $PATH)
	IFS=:
	for value in $list
	do
		echo "$value"
	done
	echo ""

	# char=":"
	# to=$(awk -F"${char}" '{print NF}' <<< "${list}")
	# to=$(echo $list | awk -F"${char}" '{print NF}')
	# echo
	# for ((i=1; i<=$to; i++))
	# do
		# echo $PATH | cut -d ':' -f $i
		# echo $PATH | awk -F: '{print '\$$i'}'
	# done

