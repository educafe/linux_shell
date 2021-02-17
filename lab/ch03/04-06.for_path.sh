#!/bin/bash
# IFS test

list=$(echo $PATH)
IFS=:
for value in $list
do
	echo "$value"
done
echo ""
IFS=

# A way of printing PATH line by line 
# char=":"
# to=$(awk -F"${char}" '{print NF}' <<< "${list}")
# to=$(echo $list | awk -F"${char}" '{print NF}')
# echo
# for ((i=1; i<=$to; i++))
# do
	# echo $PATH | cut -d ':' -f $i
	# echo $PATH | awk -F: '{print '\$$i'}'
# done

# another way of printing PATH line by line - the simplist way
# IFS=:
# printf "%s\n" $PATH

# echo ${PATH//:/$'\n'}

# another way of printing PATH line by line - using awk
# awk '{split($0, arr, ":"); for(i in arr) print arr[i]}' <<< $PATH

# another way of printing PATH line by line - using sed
# sed 's/:/\n/g' <<< $PATH