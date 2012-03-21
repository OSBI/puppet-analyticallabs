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