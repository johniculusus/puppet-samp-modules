class filetransferbucket::server {
  package { 'openssh-server' :
    ensure => latest
  }

  file { '/tmp/testmaster.txt':
    ensure => present,
    owner => root,
    group => root,
    mode => '777',
    source => "puppet:///modules/filetransferbucket/test.txt"
  }
}