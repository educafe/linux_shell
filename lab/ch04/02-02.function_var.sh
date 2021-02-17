#!/bin/bash

function my_function {
    echo "$GLOBAL_VAR"
}

my_function
GLOBAL_VAR=1
