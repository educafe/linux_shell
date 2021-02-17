#!/bin/bash
function hello {
	tput setaf 1
	echo "Function ${FUNCNAME[0]} called by ${FUNCNAME[1]}"
	echo "hello world"
	now
	echo "Function ${FUNCNAME[0]} returns to ${FUNCNAME[1]}"
	tput setaf 0
}

function now {
	tput setaf 2
	echo "Function ${FUNCNAME[0]} called by ${FUNCNAME[1]}"
	echo "It is $(date +%r)"
	echo  "Function ${FUNCNAME[0]} returns to ${FUNCNAME[1]}"
	tput setaf 1
}

echo "${FUNCNAME[0]} begins"
hello
echo "${FUNCNAME[0]} ended"