#!/bin/bash 

sudo apt update
sudo apt install nfs-common -y 

sudo mkdir -p /nfsstorage

sudo mount 192.168.0.10:/nfsstorage /nfsstorage

df -h 

ls -l /nfsstorage

echo "192.168.0.10:/nfsstorage /nfsstorage nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0" >> /etc/fstab 


# Optional: Uncomment below lines to mount nfs storage /data  and /nfsdata 

# sudo mkdir -p /data 

# sudo mount 192.168.0.10:/data /data

# df -h 

# ls -l /data

# echo "192.168.0.10:/data /data nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0" >> /etc/fstab 



# sudo mkdir -p /nfsdata

# sudo mount 192.168.0.10:/nfsdata /nfsdata

# df -h 

# ls -l /nfsdata

# echo "192.168.0.10:/nfsstorage /nfsstorage nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0" >> /etc/fstab 