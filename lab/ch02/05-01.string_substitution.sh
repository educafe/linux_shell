#!/bin/bash
# echo "var:? = "${var:?world}
echo "var:- = "${var:-world}
# echo "var:? = "${var:?world}
# var=hello
echo "var:+ = "${var:+world}
echo "var:= = "${var:=world}
echo "var:? = "${var:?world}

string=01234567890abcdefgh
echo ${string:7}
echo ${string:7:0}
