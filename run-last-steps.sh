apt update && apt upgrade -y
sleep 1
apt install -y open-vm-tools
sleep 2
dhclient -r
sleep 1
rm -R -f /etc/sysprep/last-steps
