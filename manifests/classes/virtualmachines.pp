class analyticallabs::virtualmachines{

  xen::guest { "dev2.analytical-labs.com":
    ensure => "running",
    disksize => '100G',
    ram => '4096',
    vcpus => 2,
    installopts => '--location http://download.fedoraproject.org/pub/fedora/linux/releases/10/Fedora/i386/os/ --extra-args ks=http://analytical-labs.com/ks.cfg',
  }
  
  

}