
#!/bin/sh

HOSTS=$1
for h in `cat $HOSTS`; do

        #scp runLinux.sh nudt_nina@$h:.

	#scp selinuxConfig root@$h:.
	ssh root@$h '/etc/init.d/iptables stop;chkconfig iptables off'
	#ssh root@$h 'echo -A INPUT -p tcp -m tcp --dport 1:65535 -j ACCEPT >>/etc/sysconfig/iptables'
	#ssh root@$h 'echo -A INPUT -p udp -m udp --dport 1:65535 -j ACCEPT >>/etc/sysconfig/iptables;/etc/init.d/iptables restart'
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
