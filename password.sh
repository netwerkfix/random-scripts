sleep 262974383
echo "Setup a password in NetwerkFix - Datacenter"
sleep 3
passwd root
sleep 3
systemctl disable --now passwd.service
sleep 5
rm /etc/systemd/system/passwd.service
