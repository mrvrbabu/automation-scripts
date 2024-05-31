#!/bin/bash 

sudo apt update
sudo apt install nfs-common -y 

sudo mkdir -p /nfsstorage

sudo mount 192.168.0.10:/nfsstorage /nfsstorage

df -h 

ls -l /nfsstorage

echo "192.168.0.10:/nfsstorage /nfsstorage nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0" >> /etc/fstab 