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
class analyticallabs::websites::starston {
	apache::vhost {
		"starston.analytical-labs.com" :
			ensure => present,
}


  mysql::database {
    "starston" :
      ensure => present,
      require => Class["mysql::server"]
  }
  mysql::rights {
    "starston rights" :
      ensure => present,
      database => "starston",
      user => "starston",
      password => "!star*",
      require => Class["mysql::server"],
  }
}

