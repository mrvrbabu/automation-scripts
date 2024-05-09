#!/bin/bash 

kubeadm token create --print-join-command > join-cluster.sh 
sed -i 's/kubeadm/sudo kubeadm/g' join-cluster.sh
