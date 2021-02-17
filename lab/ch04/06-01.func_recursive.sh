#!/bin/bash
#File listing test

function dir_lists {
	for d in $1/*; do
		if [[ -d $d ]]; then
			echo "$d "
			dir_lists $d
		fi
	done
}

read -p "Input directory path to list up files : " dir
dirs=$(dir_lists $dir)
for dir in $dirs
do
	echo $dir
done

