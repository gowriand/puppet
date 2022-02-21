#/bin/bash

apt install -y net-tools
name=master.ubuntu.com
ip=`ifconfig |grep "broadcast 172." |grep -v 127.0.0.1 |awk '{print $2}'`
echo "$name"  > /etc/hostname
sudo sed -i "1 s/^/$ip $name puppet \n/" /etc/hosts

wget -O /tmp/puppet7-release-focal.deb https://apt.puppet.com/puppet7-release-focal.deb
sudo dpkg -i /tmp/puppet7-release-focal.deb
sudo apt-get update

sudo reboot
