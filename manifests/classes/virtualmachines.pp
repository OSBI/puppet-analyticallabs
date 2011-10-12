class analyticallabs::virtualmachines{

  xen::guest { "dev2.analytical-labs.com":
    ensure => "running",
    disksize => '100G',
    ram => '4096M',
    vcpus => 2,
    ipaddr => '85.10.241.74'
  }
  
  

}