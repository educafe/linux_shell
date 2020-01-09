	
	#!/bin/bash
	# file copy by redirection using Pipe

	#tar -cf - -C /home/educafe/lab/ch01 . | tar -xf - -C ~/backup
	tar -cf - -C /home/educafe/lab/ch01 * | tar -xf - -C ~/backup
	tar -cf - -C /home/educafe/lab ch01/ | tar -xf - -C ~/backup
	tar -cf - -C /home/educafe lab/ | tar -xf - -C ~/backup
	
	
