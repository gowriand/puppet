# Class Definition 

class ntpconfig {
  package {"ntp": 
    ensure=> "present",
    }
  file {"/etc/ntp.conf": 
    ensure=> "present", 
    content=> "server 0.centos.pool.ntp.org iburst\n",
    }
  service {"ntpd": 
    ensure=> "running",
    }
}

include ntpconfig
