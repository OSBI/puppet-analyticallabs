class analyticallabs::zabbix::client {
  $shortname = "${fqdn}" # the name Zabbix Server uses for this node
  $zabbix_server = "176.34.241.162"

  include zabbix::agent    


}