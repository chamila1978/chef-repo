# -*- mode: ruby -*-
# vi: set ft=ruby :
# This is a Vagrant configuration file. It can be used to set up and manage
# virtual machines on your local system or in the cloud. See http://downloads.vagrantup.com/
# for downloads and installation instructions, and see http://docs.vagrantup.com/v2/
# for more information and configuring and using Vagrant.

#refer to original file Vagrant-bk


Vagrant.configure("2") do |config|

  
  config.vm.define "ser01" do |ser01|

  # Every Vagrant virtual environment requires a box to build off of.  
  ser01.vm.box = "opscode-ubuntu-12.04-i386"

  ser01.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04-i386_provisionerless.box"

  ser01.vm.hostname = "chamila-starter1"

  ser01.vm.network :forwarded_port, guest: 8080, host: 9090
  end

  #box two here.....

  config.vm.define "ser02" do |ser02|

  # Every Vagrant virtual environment requires a box to build off of.  
  ser02.vm.box = "ser02"

  ser02.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04-i386_provisionerless.box"

  ser02.vm.hostname = "chamila-starter2"

  ser02.vm.network :forwarded_port, guest: 8081, host: 9091
  end


    #box 3 here.....

  config.vm.define "ser03" do |ser03|

  # Every Vagrant virtual environment requires a box to build off of.  
  ser03.vm.box = "ser03"

  ser03.vm.provider "vmware_fusion" do |v, override|
    override.vm.box = "ser03_fusion"
  end

  ser03.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"

  ser03.vm.hostname = "chamila-starter3"

  ser03.vm.network :forwarded_port, guest: 8080, host: 9092
  ser03.vm.network :forwarded_port, guest: 9990, host: 9999
  ser03.vm.network :forwarded_port, guest: 8082, host: 9091
  end


end
