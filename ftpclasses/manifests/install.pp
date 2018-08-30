class ftpclasses::install {
  package { 'vsftpd':
    ensure => 'present',
  }
}
