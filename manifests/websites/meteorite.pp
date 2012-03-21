
class analyticallabs::websites::meteorite{
  apache::vhost {"meteorite.bi":
    ensure => present,
  }

}