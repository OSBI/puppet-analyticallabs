class analyticallabs::virtualmachines {
	xen::guest {
		"ci2.analytical-labs.com" :
			ensure => "running",
			disksize => '100G',
			ram => '4096M',
			vcpus => 2,
			ipaddr => '85.10.241.74'
	}
	xen::guest {
		"webserver2.analytical-labs.com" :
			ensure => "running",
			disksize => "100G",
			ram => "4096M",
			vcpus => 2,
			ipaddr => '85.10.241.75'
	}
}
