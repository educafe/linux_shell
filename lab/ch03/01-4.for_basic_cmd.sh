#!/bin/bash
# To build list from command execution
file=/home/linux/lab/ch03/dir/servers.txt

for server in $(cat $file)
do
	