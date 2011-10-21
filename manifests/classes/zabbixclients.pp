class analyticallabs::zabbix::client {
    $shortname = "${fqdn}" # the name Zabbix Server uses for this node
    $zabbix_server = "46.4.83.44"

	include zabbix::agent    
     

}