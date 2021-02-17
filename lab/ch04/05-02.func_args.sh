#!/bin/bash

function hello {
	args="$@"
	set args
    echo $[$1 + $2 + $3 + $4]
}

hello 10 20 30 40 50
