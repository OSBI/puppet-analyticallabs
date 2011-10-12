class analyticallabs::virtualmachines{

  xen::guest { "dev2.analytical-labs.com":
    ensure => "running",
    disksize => '100G',
    ram => '4096',
    vcpus => 2,
    installopts => '--location http://de.archive.ubuntu.com/ubuntu/dists/natty/main/installer-amd64/ --extra-args ks=http://analytical-labs.com/ks.cfg',
    console => false,
  }
  
  

}