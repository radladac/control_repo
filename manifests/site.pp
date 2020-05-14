node default{
  file {'/root/README':
    ensure => file,
  }
}
node 'master.puppet.vm' {
  include role::master_server
}
node /^web/ {    ##matches anything beginning with web
  include role::app_server
}

node /^db/ {
  include role::db_server
}
