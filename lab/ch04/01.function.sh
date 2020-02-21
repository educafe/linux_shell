#!/bin/bash
source color
function hello() {
	echo -e $CYAN"Function ${FUNCNAME[0]} called by ${FUNCNAME[1]}"
	echo "hello world"
	now
	echo -e "Function ${FUNCNAME[0]} returns to ${FUNCNAME[1]}"$RESET
}

function now() {
	echo -e $RED"Function ${FUNCNAME[0]} called by ${FUNCNAME[1]}"
	echo "It is $(date +%r)"
	echo -e "Function ${FUNCNAME[0]} returns to ${FUNCNAME[1]}"$CYAN
}

echo "${FUNCNAME[0]} begins"
hello
echo "${FUNCNAME[0]} ended"