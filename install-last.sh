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
cd /root
sleep 2
systemctl enable --now update.service
