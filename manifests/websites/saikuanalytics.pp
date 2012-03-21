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
}