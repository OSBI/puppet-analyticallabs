class analyticallabs::websites::analyticallabs{
	apache::vhost {"analytical-labs.com":
  		ensure => present,
	}

	apache::vhost {"www.analytical-labs.com":
  		ensure => present,
	}

	file { "/var/www/www.analytical-labs.com/htdocs/.htaccess" :
    	ensure => present,
        content => template('analyticallabs/vhost_htaccess.erb'),
    }
    
    apache::module{ "rewrite": }
    
}

class analyticallabs::websites::meteorite{
	apache::vhost {"meteorite.bi":
  		ensure => present,
	}

}

class analyticallabs::websites::meteoriteconsulting{
	apache::vhost {"meteoriteconsulting.com":
  		ensure => present,
	}

}

class analyticallabs::websites::saikuanalytics{
	apache::vhost {"saikuanalytics.com":
  		ensure => present,
	}

}

