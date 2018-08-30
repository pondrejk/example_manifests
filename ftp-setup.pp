
package { 'vsftpd':
  ensure => 'present',
}

user { 'ftpadmin':
  ensure           => 'present',
  home             => '/var/ftp',
  shell            => '/bin/bash',
}

file { ['/var/ftp', '/var/ftp/pub'] :
  ensure => 'directory',
  owner => 'ftpadmin',
  mode => '0755',
  require => User['ftpadmin']
}

service { 'vsftpd' :
  ensure => 'running',
  enable => true,
  require => Package['vsftpd'],
}
