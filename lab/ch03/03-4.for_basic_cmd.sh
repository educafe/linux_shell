	
	#!/bin/bash
	# To build list from command execution
	file=/home/educafe/lab/ch03/dir/servers.txt

	for server in $(cat $file)
	do
		ping -c 5 $server
	done
		
		