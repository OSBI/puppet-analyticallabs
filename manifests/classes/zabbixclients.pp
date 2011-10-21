class analyticallabs::zabbix::client {

include zabbix::agent
    $shortname = "${fqdn}" # the name Zabbix Server uses for this node
    $zabbix_server = "46.4.83.44"
    
     

}