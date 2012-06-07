# Class: analyticallabs::virtualmachines
#
# This module manages our xen virtual machines
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
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
	
	xen::guest {
		"ssd.analytical-labs.com" :
			ensure => "running",
			disksize => "100G",
			ram => "4096M",
			vcpus => 2,
			ipaddr => '85.10.241.76'
	}
}
