#!/bin/bash
######################################################
#### WARNING PIPING TO BASH IS STUPID: DO NOT USE THIS
######################################################
# TESTED ON UBUNTU 22.04.1 LTS (Works for me)

# this command give the script sudo perms

if [ `id -u` -ne 0 ]; then
	echo Need sudo
	exit 1
fi

set -v


clear
sleep 5
echo "Setup a password in NetwerkFix - Datacenter"
sleep 3
passwd root
sleep 130
echo "waiting 1min 30sec"
sleep 2
systemctl disable --now passwd.service
sleep 5
rm /etc/systemd/system/passwd.service
sleep 4
apt update && apt upgrade -y
sleep 4
sudo dhclient -r
