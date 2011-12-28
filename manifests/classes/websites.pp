class analyticallabs::websites::analyticallabs{
  include apache
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


}

class analyticallabs::websites::docs{

  apache::vhost {"docs.analytical-labs.com":
      ensure => present,
  }

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

  apache::vhost {"www.meteoriteconsulting.com":
    ensure => present,
  }

  file { "/var/www/www.meteoriteconsulting.com/htdocs/.htaccess" :
    ensure => present,
    content => template('analyticallabs/vhost_htaccess.erb'),
  }

}

class analyticallabs::websites::saikuanalytics{
  apache::vhost {"saikuanalytics.com":
    ensure => present,
  }

  apache::vhost {"www.saikuanalytics.com":
    ensure => present,
  }

  file { "/var/www/www.saikuanalytics.com/htdocs/.htaccess" :
    ensure => present,
    content => template('analyticallabs/vhost_htaccess.erb'),
  }

  class analyticallabs::websites::ask {
    apache::vhost {"ask.analytical-labs.com":
      ensure => present,
    }


  }
}

