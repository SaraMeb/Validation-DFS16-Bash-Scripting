#!/bin/bash

echo "Création du fichier vagrant"
touch Vagrantfile
echo "Avec quel dossier souhaitez-vous le synchroniser?"
read directory
mkdir $directory
cat > vagrantfile << eof
# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
config.vm.box = "ubuntu/xenial64"
config.vm.network "private_network", ip: "192.168.33.10"
config.vm.synced_folder "./$directory", "/var/www/html"
config.vm.provision "shell", inline: <<-SHELL
  apt-get update
SHELL
end
eof

vagrant up
vagrant ssh
