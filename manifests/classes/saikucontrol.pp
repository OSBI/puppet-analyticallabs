class analyticallabs:saiku::control {

	apache::module {"proxy_ajp":
  		ensure  => present,
	}

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

}