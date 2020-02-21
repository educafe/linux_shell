#!/bin/bash

DATE="$(date +%y%m%d_%H%M)"
SERVER_FILE=servers.txt
if [[ ! -e "${SERVER_FILE}" ]]
then
  echo "Cannot open ${SERVER_FILE}." >&2
  exit 1
fi
while read server
do
	echo "Pinging ${server}"
	ping -c5 "${server}" &> /dev/null
	if [[ "${?}" -ne 0 ]]; then
		echo "${server} down at [$(date +%T)]." >> DownServer.$DATE 
	else
		echo "${server} up." >> UpServer.$DATE 
	fi
done < $SERVER_FILE
