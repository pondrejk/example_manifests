$username = 'student'

# default file ownership in the manifest scope
File {
  group    => $username,
  owner    => $username,
}

$homedir = $username ? {
  "root" => "/root",
  default => "/home/${username}",
}

file { "${homedir}/.vim":
  ensure   => 'directory',
}

file { "${homedir}/.vimrc":
  ensure   => 'file',
  content  => "set ai sw=2",
}

if $username != 'root' {
  file { "${homedir}/.ssh":
    ensure   => 'directory',
    mode     => '700',
  }
  file { "${homedir}/.ssh/authorzed_keys":
    ensure   => 'file',
    content  => "ssh-rsa ...",
    mode     => '600',
  }
}
