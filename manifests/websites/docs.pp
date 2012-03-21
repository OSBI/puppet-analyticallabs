class analyticallabs::websites::docs {
	apache::vhost {
		"docs.analytical-labs.com" :
			ensure => present,
	}
}