class analyticallabs::zabbix::client {
    $shortname = "${fqdn}" # the name Zabbix Server uses for this node
    $zabbix_server = "46.137.95.179"

	include zabbix::agent    
     

}