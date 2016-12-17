class openssh::server {
  $companyName              = 'Foo Inc.'
  $allowUsers               = ['puppet-master']
  $banner                   = '/etc/issue.net'
  $hostBasedAuthentication  = 'no'
  $ignoreRhosts             = 'no'
  $logLevel                 = 'verbose'
  $passwordAuthentication   = 'yes'
  $premitEmptyPasswords     = 'no'
  $permitRootLogin          = 'no'
  $port                     = 22
  $rhostsRSAAuthentication  = 'no'
  package { 'openssh-server' :
    ensure => latest
  }

  file { '/etc/ssh/sshd_config' :
    ensure  => present,
#    content => template('openssh/sshd_config.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0640',
    notify  => Service['ssh'],
    require => Package['openssh-server'],
  }

#  file { '/etc/issue.net' :
#    ensure  => present,
#    content => template('openssh/issue.net.erb'),
#    owner   => 'root',
#    group   => 'root',
#    mode    => '0644',
#  }

  service { 'ssh' :
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => [
      File['/etc/ssh/sshd_config'],
      Package['openssh-server']
    ]
  }
}