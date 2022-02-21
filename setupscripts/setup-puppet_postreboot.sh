#!/bin/bash
apt-get install -y puppetserver
sed -i 's/Xms2g -Xmx2g/Xms512m -Xmx512m/g' /etc/default/puppetserver
source /etc/profile.d/puppet-agent.sh
sudo systemctl start puppetserver
sudo systemctl status puppetserver
bash -l
puppetserver -v

