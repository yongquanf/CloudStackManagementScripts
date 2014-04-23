
#!/bin/sh

HOSTS=$1
for h in `cat $HOSTS`; do

        #scp runLinux.sh nudt_nina@$h:.

        scp selinuxConfig root@$h:.

        ssh root@$h 'rm /etc/selinux/config;mv selinuxConfig /etc/selinux/config'

done
