#!/bin/bash
var=hello
var1=""
echo "var="${var:-world}
echo "var1="${var1:-world}
echo

echo "var="${var:+world}
echo "var1="${var1:+world}
echo

var=${var:=world}
var1=${var1:=world}
echo "var="$var
echo "var1="$var1
