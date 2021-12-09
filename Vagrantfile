# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"

  config.vm.network "forwarded_port", guest: 80, host: 8888, host_ip: "127.0.0.1"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "hometask3" 
    vb.cpus = 2 
    vb.memory = 1024
  end
  
  config.vm.provision "shell", path: "bash_script.sh"
end