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
class analyticallabs::websites::projects {
	apache::vhost {
		"projects.analytical-labs.com" :
			ensure => present,
}
}

