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
class analyticallabs::helpdesk::control {
	include mysql::server
	 apache::vhost {
		"helpdesk.meteoritehosting.com" :
			ensure => absent,
	}
	   apache::vhost{
	   "helpdesk.meteorite.bi" :
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