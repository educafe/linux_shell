#!/bin/bash
# pattern matching

var=user:123:321:/home/linux:/bin/bash
echo "var="$var
echo ${var%:*}
echo ${var%%:*}
echo

var=$(getent passwd linux)
echo "var="$var
echo ${var%%:*}
echo

var=/usr/local/src/prog.c
echo ${var#/*/}
echo ${var##/*/}

var=helloworld
var="${var%?????}"
echo $var

var=helloworld
echo ${var:0:5}