# Class: analyticallabs::motd
#
# This module manages the MOTD
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class analyticallabs::motd {
	include ::motd 
	
	$puppet_server = extlookup('puppet_server', 'puppet')
	
	motd::message {
		"motd" :
			content => template('analyticallabs/system.motd.erb')
	}
}