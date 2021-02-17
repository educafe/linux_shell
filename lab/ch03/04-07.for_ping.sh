#!/bin/bash

# Usage: myping HOST [HOSTN]...
# Retuns 0 if the hosts respond to ping or 1 if any of them fail to respond.
#

# Help
if [ -z "$1" ] || [ "$1" = '-h' ] || [ "$1" = '--help' ]; then
 	echo 'Usage: myping HOST [HOSTN]...' >&2
  	echo 'Retuns 0 if the hosts respond to ping or 1 if any of them fail to respond.' >&2
  	exit
fi

PING='ping -c 2 -W 1'
GREP_PATTERN='100%'

# Hope for the best, prepare for the worst.
RETURN_CODE=0

# Loop through the hosts provided on the command line.
for HOST in $@
do
  	PING_RESULT=$($PING $HOST 2>&1 | egrep "$GREP_PATTERN|unknown host" | cut -d, -f3 | wc -l)
  	[ "$PING_RESULT" -eq 0 ] && {
		RETURN_CODE=0
		echo $HOST is up
	} || {
    	RETURN_CODE=1
    	echo "$HOST is down"
  }
done

return $RETURN_CODE
