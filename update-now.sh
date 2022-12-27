#!/bin/bash
######################################################
#### WARNING PIPING TO BASH IS STUPID: DO NOT USE THIS
######################################################
# modified from: jcppkkk/prepare-ubuntu-template.sh
# TESTED ON UBUNTU 18.04 LTS (Alternate installer, without cloud-init)
# TESTED ON UBUNTU 22.04.1 LTS (Works for me)

if [ `id -u` -ne 0 ]; then
	echo Need sudo
	exit 1
fi

set -v

apt update && apt upgrade -y
sleep 2
echo "Setup a password in NetwerkFix - Datacenter"
sleep 3
passwd root

systemctl disable updates.service
rm /etc/systemd/system/updates.service
