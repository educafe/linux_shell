#!/bin/bash

function my_function {
	tput setaf 1
    echo "$GLOBAL_VAR"
	tput setaf 0
}
GLOBAL_VAR=1
my_function
