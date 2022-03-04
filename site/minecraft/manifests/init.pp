class minecraft (
  $url='https://s3.amazonaws.com/Minecraft.Download/versions/1.12.1/minecraft_server.1.12.1.jar'
){
  file{'/opt/minecraft':
    ensure => directory,
  }
  file{'/opt/minecraft/minecraft_server.jar':
    ensure => file,
    source => $url,
  }
  package {java:
    ensure => present,
  }
  file{'/opt/minecraft/eula.txt':
    ensure => file,
    content => 'eula=true',
  }
  file{'/etc/systemd/system/minecraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service',
  }
  service {'minecraft':
    ensure => running,
    enable => true,
    require=> [Package['java'], File['/opt/minecraft/minecraft_server.jar']]
  }

}
  
    
