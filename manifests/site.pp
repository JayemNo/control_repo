node default { 
}
node 'master.puppet.vm' {
  include role::master_server
}

node /^web/ {
  indclude role::app_server
}

node /^db/ {
  indclude role::db_server
}

