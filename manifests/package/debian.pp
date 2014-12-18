# Class: glusterfs::package::debian
#
# This module manages glusterfs package installation on debian based systems
#
class glusterfs::package::debian(
  $debian_packages = [
    'glusterfs-common',
    'glusterfs-server',
    'glusterfs-client',
    ],
) {

  package { $debian_packages:
    ensure  => installed,
  }

}
