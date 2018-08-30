package { 'httpd' :
  ensure => 'absent',
}

service { 'httpd' :
  ensure => 'stopped',
  enable => false,
}
