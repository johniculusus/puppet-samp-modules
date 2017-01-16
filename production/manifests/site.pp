node 'puppetc' { # This node is not connected to HPE network / no proxy
  include openssh::server
  include filetransferbucket::server
}

node default {
  include openssh::server
  include filetransferbucket::server
}