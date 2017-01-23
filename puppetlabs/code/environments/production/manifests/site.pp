node 'ip-172-31-31-65.ap-southeast-1.compute.internal' { # puppetc1 instance
  include openssh::server
  include filetransferbucket::server
}

node 'ip-172-31-31-67.ap-southeast-1.compute.internal' { # puppetc2 instance
  # Testing puppetlabs-git module from puppetforge

  include git
  git::config { 'user.name':
    value => 'johniculusus',
  }
  git::config { 'user.email':
    value => 'johndiaz.developer@gmail.com',
  }
}

node default {
  include openssh::server
  include filetransferbucket::server
}
