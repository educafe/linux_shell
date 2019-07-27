#!/bin/bash
# iterate in fix number

for i in {1..5}
do
	echo "Looping -- $i"
	sleep 1
done

for ((i=1; i<=5; i++))
do
	echo "Looping -- $i"
	sleep 1
done

for str in hello world good morning
do	
	echo $str
	sleep 1
done

for str in "hello world" "good morning"
do	
	echo $str
	sleep 1
done
