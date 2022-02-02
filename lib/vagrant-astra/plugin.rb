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
    class Plugin < Vagrant.plugin("2")
      name "Astra Linux guest"
      description "Astra Linux guest support."

      guest(:astra, :debian) do
        require_relative "guest"
        Guest
      end
    end
  end
end
