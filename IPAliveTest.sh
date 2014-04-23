#!/bin/sh

HOSTS=$1
status=targetIPAliveness
count=3
for h in `cat $HOSTS`; do
	ping  -i 0.21 -q -c $count $h >>$status
	echo $h
done
