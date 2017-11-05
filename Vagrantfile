# -*- mode: ruby -*-
# vi: set ft=ruby :

# Requires installation of the disksize plugin in order to work properly.
# https://github.com/sprotheroe/vagrant-disksize

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision "docker"
  config.disksize.size = '50GB' 
end
