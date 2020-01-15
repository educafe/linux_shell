#!/bin/bash
# timed-input.sh
# TMOUT=3 Also works, as of newer versions of Bash.
TIMER_INTERRUPT=14
TIMELIMIT=5 # Three seconds in this instance.
# May be set to different value.
PrintAnswer()
{
	if [ "$answer" = TIMEOUT ]
	then
		echo $answer
		else 			# Don't want to mix up the two instances.
		echo "Your favorite veggie is $answer"
		kill $! 		# Kills no-longer-needed TimerOn function
						#+ running in background.
						# $! is PID of last job running in background.
	fi
}
TimerOn()
{
	sleep $TIMELIMIT && kill -s 14 $$ &
						# Waits 3 seconds, then sends sigalarm to script.
}
Int14Vector()
{
	answer="TIMEOUT"
	PrintAnswer
	exit $TIMER_INTERRUPT
}
trap Int14Vector $TIMER_INTERRUPT
# Timer interrupt (14) subverted for our purposes.
echo "What is your favorite fruit : "
TimerOn
read answer
PrintAnswer