begin
  require 'vagrant'
rescue LoadError
  raise 'The Vagrant Astra Linux Guest plugin must be run within Vagrant.'
end

if Vagrant::VERSION < '2.0.0'
  fail 'The vagrant-astra plugin is only compatible with Vagrant 2.0+'
end

module VagrantPlugins
  module GuestAstra
    class Guest < Vagrant.plugin('2', :guest)
      # Name used for guest detection
      GUEST_DETECTION_NAME = "astra".freeze
    end
  end
end
