sleep 240
wget https://raw.githubusercontent.com/netwerkfix/ubuntu22.04-Sysprep/main/inst>
sleep 1
chmod 755 installer.sh
sleep 1
sudo ./installer.sh
sleep 1
systemctl disable install.service
