# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define "monitorclient" do |monitorclient|
    monitorclient.vm.hostname = "monitorclient"
    monitorclient.vm.box = "debian/stretch64"
    monitorclient.vm.network "private_network", type: "dhcp", virtualbox__intnet: "RedeVagrant"
    monitorclient.vm.provider "virtualbox" do |vb|
      vb.name = "monitorclient"
    end
    monitorserver.vm.provision "shell", path: "./client-install.sh"
  end

end