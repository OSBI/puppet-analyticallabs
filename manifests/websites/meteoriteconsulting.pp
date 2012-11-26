# Class: analyticallabs::websites::meteoriteconsulting
#
# This module manages meteoriteconsulting websites
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class analyticallabs::websites::meteoriteconsulting {
  include php::apache
	apache::vhost {
		"meteoriteconsulting.com" :
			ensure => present,
	}
	apache::vhost {
		"www.meteoriteconsulting.com" :
			ensure => present,
	}
	file {
		"/var/www/www.meteoriteconsulting.com/htdocs/.htaccess" :
			ensure => present,
			content => template('analyticallabs/vhost_htaccess.erb'),
	}
}