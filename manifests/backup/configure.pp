  $backupfilelist = ""

class analyticallabs::backup::configure {

if($::hostname == "vhost"){
  class { "mysql::backup":}
$backupfilelist = "/var/www/
/var/backups
/opt/otrs
/home/"
}

if($::hostname == "utility"){
  class { "mysql::backup":}
$backupfilelist = "/var/www/
/var/backups
/home/"
}

if($::hostname == "webserver2"){
  class { "mysql::backup":}
$backupfilelist = "/var/www
/var/backups
}

class analyticallabs::backup::configure::dup{
   $ec2id = extlookup('ec2id', '')
$ec2key = extlookup('ec2key', '')
$s3destination = extlookup('s3destination', '')
 
#class {'duplicity':
#      backup_action => 'backup',
#      file_dest => "${s3destination}/$::hostname",
#      access_id => "${ec2id}",
#      secret_key =>"${ec2key}",
#      backup_filelist => $backupfilelist,
#    }
}

 file{ "/var/backups/":
ensure=> "directory",
}->
class{'analyticallabs::backup::configure::dup':}
}
