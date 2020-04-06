#!/bin/bash
function usage() {
	echo "Usage: $0 -e EMAIL_ADDRESS" >&2
	exit
}

while getopts "e:" opt; do
	case "${opt}" in
		e)
		  EMAIL_ADDRESS=${OPTARG}
		  ;;
		*)
		  usage
		  exit 2
		  ;;
	esac
done

if [ -z "${EMAIL_ADDRESS}" ]; then
	usage
fi


DATE="$(date +%y%m%d_%H%M)"
SERVER_FILE=servers.txt
if [[ ! -e "${SERVER_FILE}" ]]; then
	echo "Cannot open ${SERVER_FILE}." >&2
	exit 1
fi
while read server
do
	echo "Pinging ${server}"
	./myping $server &> /dev/null
	if [[ "${?}" -ne 0 ]]; then
		echo "${server} down at [$(date +%T)]." >> DownServer.$DATE.txt 
	else
		echo "${server} up." >> UpServer.$DATE.txt
	fi
done < $SERVER_FILE

echo "Attached please find the result of ping tested on $(date +%F)" | \
	mailx -s "PingTest Result on $(date +%F)" -A DownServer.$DATE.txt -A UpServer.$DATE.txt \
	$EMAIL_ADDRESS
rm DownServer.$DATE.txt UpServer.$DATE.txt

