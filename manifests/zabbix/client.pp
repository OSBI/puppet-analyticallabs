# Class: analyticallabs::zabbix::client
#
# This module manages zabbix agent
#
# Parameters:
# fqdn
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class analyticallabs::zabbix::client {
	$shortname = "${::fqdn}"# the name Zabbix Server uses for this node
	$zabbix_server = "176.34.241.162"
	include zabbix::agent
}