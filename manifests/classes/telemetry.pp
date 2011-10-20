analyticallabs::telemetry {
	include nodejs
	
	exec { "install telemetry":
    	command => "npm install -g telemetry",
    	creates => "/usr/bin/telemetry",
    }

    file { "/usr/lib/node_modules/telemetry/config.yaml" :
        content => template("analyticallabs/telemetry_config.yaml.erb"),
    }
}