class analyticallabs::motd {
  include motd
  motd::message { "motd":
       source => template('analyticallabs/system.motd.erb') } 
  
}