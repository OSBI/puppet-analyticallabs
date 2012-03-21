# Class: analyticallabs::websites::sonar 
#
# This module manages Sonar install
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class analyticallabs::websites::sonar {
	include mysql::server 
	
	apache::vhost {
		"sonar.analytical-labs.com" :
			ensure => present,
	}
	apache::proxypass {
		"sonar" :
			ensure => present,
			location => "/",
			vhost => "sonar.analytical-labs.com",
			url => "http://localhost:9000/",
	}
	mysql::database {
		"sonar" :
			ensure => present,
			require => Class["mysql::server"]
	}
	mysql::rights {
		"sonar" :
			ensure => present,
			database => "sonar",
			user => "sonar",
			password => "s0nAr",
			require => Class["mysql::server"],
	}
}