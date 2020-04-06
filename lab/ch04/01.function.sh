#!/bin/bash
function hello() {
	echo "Function ${FUNCNAME[0]} called by ${FUNCNAME[1]}"
	echo "hello world"
	now
	echo "Function ${FUNCNAME[0]} returns to ${FUNCNAME[1]}"
}

function now() {
	echo "Function ${FUNCNAME[0]} called by ${FUNCNAME[1]}"
	echo "It is $(date +%r)"
	echo  "Function ${FUNCNAME[0]} returns to ${FUNCNAME[1]}"
}

echo "${FUNCNAME[0]} begins"
hello
echo "${FUNCNAME[0]} ended"