# Class: analyticallabs::websites::analyticallabs
#
# This module manages analyticallabs websites
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class analyticallabs::websites::projects {
	$content = "<VirtualHost *:80>
  ServerName projects.analytical-labs.com


  DocumentRoot /var/www/projects.analytical-labs.com/htdocs/redmine
  PassengerResolveSymlinksInDocumentRoot on
Options Indexes ExecCGI FollowSymlinks
  LogLevel warn

  ErrorLog /var/www/projects.analytical-labs.com/logs/error.log
  CustomLog /var/www/projects.analytical-labs.com/logs/access.log \"combined\"

  Include /var/www/projects.analytical-labs.com/conf/*.conf

  ScriptAlias /cgi-bin/ /var/www/projects.analytical-labs.com/cgi-bin/
  <Directory /var/www/projects.analytical-labs.com/cgi-bin/>
    Options +ExecCGI
    AddHandler cgi-script .cgi
  </Directory>

  ServerSignature Off

</VirtualHost>" 
	apache::vhost {
		"projects.analytical-labs.com" :
			ensure => present,
			config_content => $content,
}
}

