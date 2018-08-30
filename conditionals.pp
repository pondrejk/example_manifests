# selector populates the variable
$disk = $::is_virtual ? {
   true => '/dev/vda',
   default => '/dev/sda'
}

notify {'disk':
   message => "value is $disk.",
}

if $::is_virtual {
  file { '/tmp/virtual.txt':
    content => "This is a virtual file system. Disk is ${disk}.\n"
  }
}
else {
  file { '/tmp/physical.txt':
    content => "This is a physical file system. Disk is ${disk}.\n"
  }
}

case $::osfamily {
  'RedHat', 'CentOS': {
     notify { "Hat and friends." : }
   }
  'Solaris': {
     notify { "Sad loss." : }
   }
   default: {
     notify { "Dunno." : }
   }
}
