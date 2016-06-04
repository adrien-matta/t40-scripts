systemctl stop nfs
systemctl stop nfs-config
systemctl stop rpcbind.socket
systemctl stop rpcbind.service
systemctl start nfs
systemctl start nfs-config
systemctl start rpcbind.socket
systemctl start rpcbind.service
exportfs -av
