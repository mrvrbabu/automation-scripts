#!/bin/bash 

echo "This script will create two lvm storage" 

lvcreate -n data -L 10G ubuntu-vg

lvcreate -n nfsdata -L 10G ubuntu-vg

mkfs.ext4 /dev/ubuntu-vg/nfsdata

mkfs.ext4 /dev/ubuntu-vg/data

blkid /dev/ubuntu-vg/data

blkid /dev/ubuntu-vg/nfsdata

echo "Update the /etc/fstab with block id as below format\n"

echo "UUID=d99d483e-d435-448c-888f-64c3df701a06    /data  ext4 defaults 0 0" 
echo "UUID=46250dee-efe3-4685-8e37-1fc1d9458e32    /nfsdata ext4 defaults 0 0"

chmod -v 777 /data 
chmod -v 777 /nfsdata 