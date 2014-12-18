# == Class: glusterfs::service
#
class glusterfs::service {

  case $::osfamily {
    'redhat': {
        $service = 'glusterd'
    }
    'debian': {
        $service = 'glusterfs-server'
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily} operatingsystem: ${::operatingsystem}, module ${module_name} only support osfamily RedHat and Debian")
    }
  }

  service { $service:
    ensure    => running,
    enable    => true,
    hasstatus => true,
  }

}
