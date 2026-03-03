#!/bin/bash
sudo apt update 
sudo apt install nfs-kernel-server -y

sudo mkdir -pv /nfsstorage

ls -ld /nfsstorage 

sudo chown -v nobody:nogroup /nfsstorage 

sudo echo "/nfsstorage 192.168.0.11(rw,sync,no_subtree_check)" >> /etc/exports 
sudo echo "/nfsstorage 192.168.0.12(rw,sync,no_subtree_check)" >> /etc/exports 

cat /etc/exports 

# Optional: uncomment below lines to export /data and /nfsdata 

# sudo chown -v nobody:nogroup /data
# sudo chown -v nobody:nogroup /nfsdata 

# sudo echo "/data 192.168.0.11(rw,sync,no_subtree_check)" >> /etc/exports 
# sudo echo "/data 192.168.0.12(rw,sync,no_subtree_check)" >> /etc/exports

# sudo echo "/nfsdata 192.168.0.11(rw,sync,no_subtree_check)" >> /etc/exports 
# sudo echo "/nfsdata 192.168.0.12(rw,sync,no_subtree_check)" >> /etc/exports 


sudo systemctl restart nfs-kernel-server

sudo exportfs 