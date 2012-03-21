# Class: analyticallabs::websites::saikuanalytics
#
# This module manages saikuanalytics websites
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
class analyticallabs::websites::saikuanalytics {
	apache::vhost {
		"saikuanalytics.com" :
			ensure => present,
	}
	apache::vhost {
		"www.saikuanalytics.com" :
			ensure => present,
	}
	file {
		"/var/www/www.saikuanalytics.com/htdocs/.htaccess" :
			ensure => present,
			content => template('analyticallabs/vhost_htaccess.erb'),
	}
}