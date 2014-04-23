
#!/bin/sh

HOSTS=$1
for h in `cat $HOSTS`; do

        #scp runLinux.sh nudt_nina@$h:.

	scp selinuxConfig root@$h:.

	ssh root@$h 'rm /etc/selinux/config;mv selinuxConfig /etc/selinux/config'

        scp ntp.conf root@$h:/etc/
	
	scp nfsmount.conf root@$h:/etc/
	
	scp iptables root@$h:/etc/sysconfig/
	
	scp idmapd.conf root@$h:/etc/

	scp libvirtd root@$h:/etc/sysconfig/

	scp libvirtd.conf root@$h:/etc/libvirt/

       scp qemu.conf root@$h:/etc/libvirt/

       scp nfs root@$h:/etc/sysconfig/

	ssh root@$h ' echo "
group virt {
cpu {
cpu.shares = 9216;
}
}
" >> /etc/cgconfig.conf;
/etc/init.d/cgconfig restart;
/etc/init.d/libvirtd restart;rm -fr /etc/libvirt/storage/*'

	echo $h

done
