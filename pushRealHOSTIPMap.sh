
#!/bin/sh

HOSTS=$1
for h in `cat $HOSTS`; do

        #scp runLinux.sh nudt_nina@$h:.

	#scp selinuxConfig root@$h:.

	ssh root@$h 'echo 10.107.100.2 10-107-100-2.realhostip.com >>/etc/hosts'

        #scp ntp.conf root@$h:/etc/
	
	#scp ifcfg-cloudbr0 root@$h:/etc/sysconfig/network-scripts/
	
	#scp idmapd.conf root@$h:/etc/

	#scp libvirtd root@$h:/etc/sysconfig/

	#scp libvirtd.conf root@$h:/etc/libvirt/

       #scp qemu.conf root@$h:/etc/libvirt/



	echo $h

done
