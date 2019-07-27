#!/bin/bash
# iterate by string list and array variable
list="hello world good morning"
for str in $list; do
	echo $str; sleep 1
done

list=(hello world good morning)
for str in ${list[*]}; do
#for str in $(echo ${list[*]}); do
	echo $str; sleep 1
done

list=("hello world" "good morning")
for str in "${list[*]}"; do
#for str in "${list[@]}"; do
	echo $str; 	sleep 1
done
