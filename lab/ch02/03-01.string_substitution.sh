#!/bin/bash
value=good
#unset var
#echo "unset var"
var=$value
#unset var
echo "var = "$var
var=$value
#unset var
echo "var:- = "${var:-world}
var=$value
#unset var
echo "var:+ = "${var:+world}
var=$value
#unset var
echo "var:= = "${var:=world}