class analyticallabs::saiku::control {

	include apache::mod_proxy
	
	apache::vhost {"demo.analytical-labs.com":
  		ensure => present,
	}
	apache::vhost {"alabs":
  		ensure => absent,
	}
	apache::proxypass {"demo":
  		ensure   => present,
  		location => "/",
  		vhost    => "demo.analytical-labs.com",
  		url      => "ajp://localhost:8009/",
	}
	
	apache::vhost {"dev.analytical-labs.com":
  		ensure => present,
	}
	
	apache::proxypass {"devsaiku":
  		ensure   => present,
  		location => "/",
  		vhost    => "dev.analytical-labs.com",
  		url      => "ajp://localhost:8011/",
	}
	
}