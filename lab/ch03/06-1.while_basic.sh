#!/bin/bash
# while Test Shell Program.

i=1
while [ $i -lt 11 ]
do
	echo "loop_$i doing.."
	i=$[ $i + 1 ]
done

echo ''

i=1
while (( i<=10 ))
do
	echo "loop_$i doing.."
	(( i++ ))
done

# i=1
# sum=0
# while (( i<=10 ))
# do
	# echo -n "loop_$i -> "
	# (( sum += i++ ))
	# echo "sum:$sum"
# done

exit 0
