# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define "monitorclient" do |monitorclient|
    monitorclient.vm.hostname = "monitorclient"
    ## A box da linha seguinte é uma ubuntu_16 com interface gráfica
    monitorclient.vm.box = "dakami/ubuntu_16.04.1_gui"
    ## A linha seguinte configura uma rede privada
    # monitorclient.vm.network "private_network", ip: "192.168.0.10", virtualbox__intnet: "RedeVagrant"
    ## A linha seguinte configura uma rede bridge Ethernet
    # monitorclient.vm.network "public_network", :bridge => 'Realtek PCIe Family Controller'
    ## A linha seguinte configura uma rede bridge WiFi
    monitorclient.vm.network "public_network", :bridge => 'Dell Wireless 1705 802.11b/g/n (2.4GHZ)'
    
    monitorclient.vm.synced_folder ".", "/home/vagrant"
    monitorclient.vm.provider "virtualbox" do |vb|
      vb.name = "monitorclient"
    end
    monitorclient.vm.provision "shell", inline: <<-SHELL
    sudo su
    useradd client
    passwd -d -u client
    chage -d0 client
    echo "client:client" | sudo chpasswd
    cd
    pwd
    echo -e "root\nroot" | passwd root
    sed -i 's/PermitRootLogin no/PermitRootLogin yes/g' /etc/ssh/sshd_config
    cp -rvf /home/vagrant/.ssh/ /root/
    true
    SHELL
    monitorclient.vm.provision "shell", path: "./client-install.sh"
  end

end