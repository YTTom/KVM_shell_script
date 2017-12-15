#!/bin/bash
#Last Modified:20170320
#Writen by JF
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install vim -y

sudo chmod 777 /etc/passwd  
cat /etc/passwd  | sed -n '40p' | awk -F":" '{ print $1 }'>> user.tmp
$username =$(<user.tmp)
sudo chmod 600 /etc/passwd

sudo apt-get install cpu-checker -y
sudo apt-get install qemu-kvm libvirt-bin -y
sudo adduser $username libvirtd
sudo grep $username /etc/group
sudo apt-get install bridge-utils virt-manager -y
rm user.tmp

echo "Finished! Please reboot your vm!"
