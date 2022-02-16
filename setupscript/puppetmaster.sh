#/bin/bash

apt install -y net-tools
name=master.ubuntu.com
ip=`ifconfig |grep "broadcast 172." |grep -v 127.0.0.1 |awk '{print $2}'`
echo "$name"  > /etc/hostname
sed -i "1 s/^/$ip $name puppet puppetserver\n/" /etc/hosts

wget https://apt.puppet.com/puppet7-release-focal.deb
sudo dpkg -i puppet7-release-focal.deb
sudo apt-get update

reboot
