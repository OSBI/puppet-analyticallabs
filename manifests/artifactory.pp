# Class: analyticallabs::artifactory
#
# This module manages Artifactory installation
#
# Parameters: 
# artifactory_http
# artifactory_ajp
# artifactory_server
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class analyticallabs::artifactory {
	include ::artifactory 
	
	$artifactory_http = extlookup('artifactory_http', '')
	$artifactory_ajp = extlookup('artifactory_ajp', '')
	$artifactory_server = extlookup('artifactory_server', '')
	
	artifactory::instance {
		"repo" :
			ensure => present,
			artifactory_ajp => $artifactory_ajp,
			artifactory_http => $artifactory_http,
			artifactory_server => $artifactory_server,
	}
}
