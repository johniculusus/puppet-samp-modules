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
    owner   => 'root',
    group   => 'root',
    mode    => '0640',
    notify  => Service['ssh'],
    require => Package['openssh-server'],
  }

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
