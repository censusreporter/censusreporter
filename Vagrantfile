# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "censusreporter"
  config.vm.network :forwarded_port, guest: 8000, host: 8000
  config.vm.provision :shell, :privileged => false, :path => 'vagrant_install.sh'
end
