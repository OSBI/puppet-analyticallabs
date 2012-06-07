# Class: analyticallabs::saiku::control
#
# This module manages Saiku tomcat, apache servers.
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class analyticallabs::saiku::controlssd {
	$saiku_http = extlookup('saiku_http', '')
	$saiku_ajp = extlookup('saiku_ajp', '')
	$saiku_server = extlookup('saiku_server', '')
	$saiku_tomcat_name = extlookup('saiku_tomcat_name', '')
	$saiku_url = extlookup('saiku_url', '')
	
	include saiku::apt 
	include apache::mod_proxy 
	include analyticallabs::saiku::data 
	
	apache::vhost {
		"${saiku_url}" :
			ensure => present,
	}
	apache::proxypass {
		"${saiku_tomcat_name}" :
			ensure => present,
			location => "/",
			vhost => "${saiku_url}",
			url => "ajp://localhost:${saiku_ajp}/",
	}

	
	saiku::instance{ "${saiku_tomcat_name}":
    ensure => present,
    require => [Class["saiku::apt"],Saiku::Tomcat["$saiku_tomcat_name"]],
    default_datasource => false,
  	}
  	
    saiku::tomcat{ "$saiku_tomcat_name":
  	ensure => present,
  	tomcat_http => "${saiku_http}",
    tomcat_ajp => "${saiku_ajp}", 
    tomcat_server => "${saiku_server}",
  	}
  	
}
