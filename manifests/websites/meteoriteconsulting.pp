class analyticallabs::websites::meteoriteconsulting {
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