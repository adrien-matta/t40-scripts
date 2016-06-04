# start sshd so we can remotly acces the server
systemctl start sshd 

# start needed service for the MVME to boot
systemctl start dhcpd
systemctl start tftp 
systemctl start nfs 
systemctl start nfs-config 
systemctl start rpcbind
systemctl start rpcbind.socket
exportfs -rav

# stop any kind of firewall service causing the boot to fail
systemctl stop firewalld
systemctl stop iptables
