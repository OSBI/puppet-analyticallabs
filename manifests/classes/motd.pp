class analyticallabs::motd {
  include motd

  $puppet_server      = extlookup('puppet_server'      ,'puppet')

  motd::message { "motd":
       source => template('analyticallabs/system.motd.erb') } 
  
}