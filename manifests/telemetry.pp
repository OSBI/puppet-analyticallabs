# Class: analyticallabs::telemetry
#
# This module manages the Alabs telemetry server
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class analyticallabs::telemetry {
	include nodejs 
	
	exec {
		"install telemetry" :
			command => "npm install -g telemetry",
			creates => "/usr/bin/telemetry",
	}
	file {
		"/usr/lib/node_modules/telemetry/config.yaml" :
			ensure => present,
			content => template('analyticallabs/telemetry_config.yaml.erb'),
	}
}
