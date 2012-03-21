# Class: meteorite
#
# This module manages meteorite.bi website
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class analyticallabs::websites::meteorite {
	apache::vhost {
		"meteorite.bi" :
			ensure => present,
	}
}