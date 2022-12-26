sudo apt update && sudo apt upgrade -y
sleep 1
sudo apt install -y open-vm-tools
sleep 2
dhclient -r
sleep 1
echo "setup a password in netwerkfix - datacenter"
sleep 2
sudo passwd root
sleep 1
sudo rm -R -f /etc/sysprep/last-steps
sleep 2
systemctl disable --now run-last-steps.service
