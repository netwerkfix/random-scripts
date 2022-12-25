sudo apt install wget
sleep 1
sudo mkdir -p /etc/sysprep/last-steps
sleep 1
cd /etc/sysprep/last-steps/
sleep 1
sudo wget https://github.com/netwerkfix/random-scripts/blob/main/run-last-steps.sh
sleep 1
chmod 775 run-last-steps.sh
sleep 1
cd /etc/systemd/system/
sleep 2
wget https://github.com/netwerkfix/random-scripts/blob/main/run-last-steps.service
sleep 1
chmod 755 run-steps.service
sleep 1
cd /root
sleep 1
systemctl enable --now run-last-steps.service
