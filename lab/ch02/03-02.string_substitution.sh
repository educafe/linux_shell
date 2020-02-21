#!/bin/bash
filename=${1:?"filename missing."}
howmany=${2:-10}
cat $filename | head -$howmany

