node default{
  file {'/root/README':
    ensure => file, 
  }
}
node 'master.pappet.vm' {
  include role::master_server
}
