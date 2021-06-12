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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCpaLUhpdFRD28WO0EicXysUxWqj5BqWZRgsQABl9iW9fb1y1nKdZhfYMyOKkwyhQPqYtAcnB1yDo2pY5RCh2ETUpwTMP9O7pq6fiJtwRMsz1mbz+xKjhtZBTyXd0ZObY8KSZ+KAmlzsiMuSqVHFzO+yj2dpFelFuN1hEoCBnvl0vgvZ+x9hpioHRhKIdIVbmGYZWNxkGTjEW9Y5wbHXJ8nPbzz0mol3Mwc7rG0zXug/VP+4KRsKko9q392QDzHfL+hBX5uz/sKhODWGVY/pjmFdHjJNcAszHHCtV+keGZuaSl7ZGTxSCZ6i3oKCEJBbvywcGTGmzIUjbLoyso3+8hd root@master.puppet.vm',
	}  
}
