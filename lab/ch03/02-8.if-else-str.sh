	
	#!/bin/bash
	echo -n "Please enter an password -> "
	read password

	if [ -z $password ] || [ ${#password} -lt 8 ]; then
		echo "Password must be more than 8 characters in length." >&2
		exit 1
	fi

	if [[ "$password" =~ [0-9]+ ]]; then
		if [[ "$password" =~ [A-Z]+ ]]; then
			if [[ "$password" =~ [a-z]+ ]]; then
				echo PASSWORD=$password
			else
				echo "Password must include at least small alphabetic characters" >&2
			fi
		else
			echo "Password must include at least Capital alphabetic characters" >&2
			exit 1
		fi
	else
		echo "Password must include at least one numeric characters" >&2
		exit 1
	fi
	
	