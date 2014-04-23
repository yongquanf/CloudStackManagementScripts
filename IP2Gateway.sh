#!/bin/sh

HOSTS=$1
status=targetIPAlivenessTMP
count=3
gate=10.107.0.1

for h in `cat $HOSTS`; do
	#ping  -i 0.21 -q -c $count $h >>$status
	ssh root@$h 'ping -i 0.21 -q -c 3 10.107.0.1 >>statusTMP;cat statusTMP'
	echo $h
done
