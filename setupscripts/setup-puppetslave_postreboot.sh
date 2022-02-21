#!/bin/bash
sudo apt-get install -y puppet-agent
cp puppet.conf /etc/puppetlabs/puppet/puppet.conf
source /etc/profile.d/puppet-agent.sh
/opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true
puppet ssl bootstrap


