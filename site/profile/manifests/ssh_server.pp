class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDUp/wB9BDRpd7Ws76cFYTVt0nhCQhzzFQc2nUsLKPDrn4XDWT3s96MBLk++ue9AgwpQrkMw72orTTFF7b3hFT3Xf3q1beuF4fGgJaVWjmlm7zZJShb46ollEHkAv/Rg/CLpx84dvEHB3m8kjnwiihaOBK7mpPiUs0oua97RPQB+l1ZAzCNWU/1phGW3PczaWa4ZEhrs29HUZ3qBs6ZKuDNfjPCnbZq20yyItIAjjIgLiHq4oR4gGHGTrfend78/7NX4UmPCrBzu7CYQrTokxOqCd8pEt5jHwtopXSRGl5KolUACRuBxTc0ad2GySFsoXwdqbDGBlLj4FqeJOapP2Ip',
	}  
}
