node default { 
  file {'/root/README':
    ensure => file,
    content => 'Thisi is a readme',
   }
}
