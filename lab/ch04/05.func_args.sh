#!/bin/bash

function hello() {
    echo "Hello $1"
}

hello kosta

function hello() {
	args="$@"
    for NAME in $args
    do
        echo "Hello $NAME"
    done
}

hello kosta kea ncia
