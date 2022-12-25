sudo apt update && sudo apt upgrade -y
sleep 1
sudo apt install -y open-vm-tools
sleep 1
service rsyslog restart
sleep 2
if [ -f /var/log/wtmp ]; then
    truncate -s0 /var/log/wtmp
fi
if [ -f /var/log/lastlog ]; then
    truncate -s0 /var/log/lastlog
fi
sleep 1
rm -rf /tmp/*
sleep 1
rm -rf /var/tmp/*
sleep 2
rm -f /etc/ssh/ssh_host_*
sleep 2
dhclient -r
sleep 3
systemctl disable --now run-last-steps.service
sleep 2
sudo rm -f /etc/sysprep/last-steps
