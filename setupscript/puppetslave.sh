#/bin/bash
read -p "Enter Puppetmaster IP address : " -r ip
apt install -y net-tools
name=slave.ubuntu.com
master=master.ubuntu.com
echo "$name"  > /etc/hostname
sed -i "1 s/^/$ip $master puppet puppetserver\n/" /etc/hosts

wget https://apt.puppet.com/puppet7-release-focal.deb
sudo dpkg -i puppet7-release-focal.deb
sudo apt-get update
reboot

