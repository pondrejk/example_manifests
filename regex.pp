# regexps enclose in //
# use in if ,for inversion use !~
if $::ipaddress =~ /192\.168\.122\.\d*/ {
  notify { "matched" : }
}

$os_name = $::osfamily ? {
  /^Red/ => "Red Hat",
  default => "unknown",
} 

case $os_name {
  /Hat/: {
    notify {"matched again" : }
  }
  default: {
    notify {"no luck" : }
  }
}
