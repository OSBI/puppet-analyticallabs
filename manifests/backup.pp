  $backupfilelist = ""

class analyticallabs::backup {
include ::backup
  $ec2id = extlookup('ec2id', '')
$ec2key = extlookup('ec2key', '')
$s3destination = extlookup('s3destination', '')

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
  
class {'duplicity':
      backup_action => 'backup',
      file_dest => "${::backup::s3destination}/$::hostname",
      access_id => "${::backup::ec2id}",
      secret_key => "${::backup::ec2key}",
      backup_filelist => $backupfilelist,
    }
}

 file{ "/var/backups/":
ensure=> "directory",
}->
 file{"/var/backups/postgresql":
ensure => "directory",
}->
notify{"list = $backupfilelist":}->
class{'analyticallabs::backup::configure::dup':}

}
