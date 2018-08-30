	class ftpclasses::deploy {

file { '/etc/vstpd/vsftpd.conf' :
  ensure => 'directory',
  mode => '0600',
  source => 'puppet:///modules/ftpclasses/vsftpd.conf',
}

file { '/etc/vstpd/custom-banner' :
  ensure => 'directory',
  mode => '0644',
  source => 'puppet:///modules/ftpclasses/custom-banner',
}

}
