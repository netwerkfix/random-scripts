sudo apt update && sudo apt upgrade -y
sleep 1
sudo apt install -y open-vm-tools
sleep 2
dhclient -r
sleep 3
systemctl disable --now run-last-steps.service
sleep 2
sudo rm -R -f /etc/sysprep/last-steps
