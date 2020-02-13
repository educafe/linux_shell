#!/bin/bash

my_function() {
    echo "$GLOBAL_VAR"
}
GLOBAL_VAR=1
my_function
