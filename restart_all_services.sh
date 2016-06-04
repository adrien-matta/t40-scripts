# restart sshd so we can remotly acces the server
systemctl restart sshd 

# restart needed service for the MVME to boot
systemctl restart dhcpd
systemctl restart tftp 
systemctl restart nfs 
systemctl restart nfs-config 
systemctl restart rpcbind
systemctl restart rpcbind.socket
exportfs -rav

# stop any kind of firewall service causing the boot to fail
systemctl stop firewalld
systemctl stop iptables
