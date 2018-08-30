
$dir = '/var/tmp/example'

file { "$dir":
  ensure   => 'directory',
  mode     => '0755',
}

file { "$dir/public.txt":
  ensure   => 'file',
  mode     => '0644',
  content  => "Public content var:${dir}\n"
}

file { "$dir/private.txt":
  ensure   => 'file',
  mode     => '0600',
  content  => "Private content\n"
}

file { "$dir/secret.txt":
  ensure   => 'file',
  mode     => '0600',
  content  => "The family of this os is $::osfamily.\n"
}
