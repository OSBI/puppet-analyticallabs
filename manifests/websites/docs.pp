# Class: docs
#
# This module manages docs website
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
class analyticallabs::websites::docs {
	apache::vhost {
		"docs.analytical-labs.com" :
			ensure => present,
	}
}