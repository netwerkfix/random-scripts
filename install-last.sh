sudo apt install wget
sleep 1
sudo mkdir -p /etc/sysprep/last-steps
sleep 1
cd /etc/sysprep/last-steps/
sleep 1
sudo wget https://raw.githubusercontent.com/netwerkfix/random-scripts/main/run-last-steps.sh?token=GHSAT0AAAAAAB4X3P6ZMHLLARBVLZLCEXOSY5I4DQA
sleep 1
chmod 775 run-last-steps.sh
sleep 1
cd /etc/systemd/system/
sleep 2
wget https://raw.githubusercontent.com/netwerkfix/random-scripts/main/run-last-steps.service?token=GHSAT0AAAAAAB4X3P6ZBXIF55STREBDASSWY5I4DGA
sleep 1
chmod 755 run-steps.service
sleep 1
cd /root
sleep 1
systemctl enable --now run-last-steps.service
