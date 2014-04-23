
#!/bin/sh

HOSTS=$1
for h in `cat $HOSTS`; do

        #scp runLinux.sh nudt_nina@$h:.

	#scp selinuxConfig root@$h:.
	scp idmapd.conf root@$h:/etc/
	scp nfsmount.conf root@$h:/etc/
	 scp nfs root@$h:/etc/sysconfig/

	ssh root@$h 'service rpcbind restart;chkconfig rpcbind on;service nfs restart;chkconfig nfs on'

        #scp ntp.conf root@$h:/etc/
	
	#scp *.repo root@$h:/etc/yum.repos.d/
	#	scp -r ~/cloudstack/CloudStack-non-OSS-140/ root@$h:.
	
	#scp idmapd.conf root@$h:/etc/

	#scp libvirtd root@$h:/etc/sysconfig/

	#ssh root@$h 'yum clean all;yum makecache'


	#scp libvirtd.conf root@$h:/etc/libvirt/

       #scp qemu.conf root@$h:/etc/libvirt/



	echo $h

done
