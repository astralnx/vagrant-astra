# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-astra/version'

Gem::Specification.new do |spec|
  spec.name          = 'vagrant-astra'
  spec.version       = VagrantPlugins::GuestAstra::VERSION
  spec.license       = 'MIT'

  spec.authors       = ['Andrey Kirillov']
  spec.email         = ['akirillov@astralinux.ru']

  spec.summary       = 'Enables Vagrant to manage Astra Linux Guests.'
  spec.description   = <<-EOF
Vagrant support for Astra Linux Guests.
  EOF
  spec.homepage      = 'https://github.com/astralnx/vagrant-astra'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_path  = 'lib'
end
