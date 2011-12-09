# Taken from http://groups.google.com/group/puppet-users/msg/f87b4e6f7a188aeb
require 'facter' 
Facter.add("memorysize_mb") do 
    confine :kernel => :Linux 
    ram = 0 
    # Steal linux's meminfo 
    File.open( "/proc/meminfo" , 'r' ) do |f| 
    f.grep( /^MemTotal:/ ) { |mem| 
        ram = mem.split( / +/ )[1].to_i / 1024 
    } 
    end 
    setcode do 
    ram 
    end 
end
