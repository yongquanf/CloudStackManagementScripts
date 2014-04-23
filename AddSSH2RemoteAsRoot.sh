


#!/bin/sh
#HOSTS=candidateHosts
HOSTS=$1
for h in `cat $HOSTS`; do
	echo $h
	scp ~/.ssh/id_rsa.pub root@$h:~
	ssh root@$h "rm .ssh/known_hosts"
	#ssh root@$h "mkdir .ssh; rm ~/.ssh/authorized_keys"
	ssh root@$h "mkdir .ssh;cat id_rsa.pub >>.ssh/authorized_keys"
	#ssh $h ls
	echo $h
done
