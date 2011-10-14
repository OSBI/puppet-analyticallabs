class analyticallabs::saiku::control {

	include apache::mod_proxy
	$saiku_http			= extlookup('saiku_http','')
	$saiku_ajp			= extlookup('saiku_ajp','')
	$saiku_server		= extlookup('saiku_server','')
	$saiku_tomcat_name	= extlookup('saiku_tomcat_name','')
	$saiku_url			= extlookup('saiku_url','')
	
	$saiku_dev_http			= extlookup('saiku_dev_http','')
	$saiku_dev_ajp			= extlookup('saiku_dev_ajp','')
	$saiku_dev_server		= extlookup('saiku_dev_server','')
	$saiku_dev_tomcat_name	= extlookup('saiku_dev_tomcat_name','')
	$saiku_dev_url			= extlookup('saiku_dev_url','')
	
	apache::vhost {"${saiku_url}":
  		ensure => present,
	}
	
	apache::proxypass {"${saiku_tomcat_name}":
  		ensure   => present,
  		location => "/",
  		vhost    => "${saiku_url}",
  		url      => "ajp://localhost:${saiku_ajp}/",
	}
	
	apache::vhost {"${saiku_dev_url}":
  		ensure => present,
	}
	
	apache::proxypass {"${saiku_dev_tomcat_name}":
  		ensure   => present,
  		location => "/",
  		vhost    => "${saiku_dev_url}",
  		url      => "ajp://localhost:${saiku_dev_ajp}/",
	}
	
	saiku::instance{ "${saiku_tomcat_name}":
		ensure => present,
		tomcat_name => ${saiku_tomcat_name}, 
		tomcat_http => ${saiku_http},
		tomcat_ajp => ${saiku_ajp}, 
		tomcat_server => ${saiku_server},
	}
	
	saiku::instance{ "${saiku_dev_tomcat_name}":
		ensure => present,
		tomcat_name => ${saiku_dev_tomcat_name}, 
		tomcat_http => ${saiku_dev_http},
		tomcat_ajp => ${saiku_dev_ajp}, 
		tomcat_server => ${saiku_dev_server},
		app_name => saikudev,
	}
}