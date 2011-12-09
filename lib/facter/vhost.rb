require 'facter'
Facter.add(:vhost) do
  setcode do
    Facter::Util::Resolution.exec("cat /etc/vhost")
  end
end