#!/bin/bash

DATE=$(date +%y%m%d_%H%M)
SERVER_FILE=servers.txt

while read server
do
	ping -i 2 -c5 "$server" | \
		while read result
		do 
			echo "$(date +%Y-%m-%d_%H%M%S): $result" >> /home/linux/lab/PingTest.$DATE 
			# echo "$(date +%Y-%m-%d_%H%M%S): $result" | tee -a PingTest_$DATE.log 
		done
# done < $1
done < /home/linux/lab/snippets/servers.txt

# execute $ crontab -e 
# Input as follow at the end of the file
# * * * * * /home/linux/lab/ch03/09.while_ping.sh

# sudo service cron start
