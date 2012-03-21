# Class: analyticallabs::websites::analyticallabs
#
# This module manages analyticallabs websites
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
class analyticallabs::websites::analyticallabs {
	include apache apache::vhost {
		"analytical-labs.com" :
			ensure => present,
	}
	apache::vhost {
		"www.analytical-labs.com" :
			ensure => present,
	}
	file {
		"/var/www/www.analytical-labs.com/htdocs/.htaccess" :
			ensure => present,
			content => template('analyticallabs/vhost_htaccess.erb'),
	}
}

