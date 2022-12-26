apt update && apt upgrade -y
sleep 1
apt install -y open-vm-tools
sleep 2
dhclient -r
sleep 1
echo "setup a password in netwerkfix - datacenter"
sleep 2
passwd root
sleep 1
rm -R -f /etc/sysprep/last-steps
sleep 2
systemctl disable --now run-last-steps.service
