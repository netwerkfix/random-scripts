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
sleep 40
wget https://raw.githubusercontent.com/netwerkfix/ubuntu22.04-Sysprep/main/installer.sh
sleep 1
chmod 755 installer.sh
sleep 1
sudo ./installer.sh
sleep 1
systemctl disable install.service
