#!/bin/bash
# file copy by redirection using Pipe

#tar -cf - -C /home/linux/lab/ch01 . | tar -xf - -C ~/backup
tar -cf - -C /home/linux/lab/ch01 * | tar -xf - -C ~/backup
tar -cf - -C /home/linux/lab ch01/ | tar -xf - -C ~/backup
tar -cf - -C /home/linux lab/ | tar -xf - -C ~/backup
