# Class: analyticallabs::helpdesk::control
#
# This module manages helpdesk module
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class analyticallabs::helpdesk::control {
	include mysql::server apache::vhost {
		"helpdesk.meteoritehosting.com" :
			ensure => present,
	}
	mysql::database {
		"otrs" :
			ensure => present,
			require => Class["mysql::server"]
	}
	mysql::rights {
		"otrs rights" :
			ensure => present,
			database => "otrs",
			user => "otrs",
			password => "password",
			require => Class["mysql::server"],
	}
}