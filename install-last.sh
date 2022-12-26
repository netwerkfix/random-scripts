
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

apt install wget
sleep 1
sudo mkdir -p /etc/sysprep/last-steps
sleep 1
cd /etc/sysprep/last-steps/
sleep 1
wget https://raw.githubusercontent.com/netwerkfix/random-scripts/main/run-last-steps.sh
sleep 1
chmod 775 run-last-steps.sh
sleep 1
./run-last-steps.sh
sleep 3
cd /etc/systemd/system/
sleep 2
wget https://raw.githubusercontent.com/netwerkfix/random-scripts/main/updates.service
sleep 1
chmod 755 updates.service
sleep 1
cd /etc/sysprep/
sleep 1
wget https://raw.githubusercontent.com/netwerkfix/random-scripts/main/update.sh
sleep 1
chmod 755 update.sh
sleep 2
cd /etc/sysprep/
sleep 1
wget https://raw.githubusercontent.com/netwerkfix/random-scripts/main/update-now.sh
sleep 2
chmod 755 update-now.sh
sleep 2
./update-now.sh
sleep 2
cd /root
sleep 2
systemctl enable --now update.service
