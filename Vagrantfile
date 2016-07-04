# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "neito/xenial64-mate"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.name = "ubuntu-gui"

    vb.memory = "3072"
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--vram", "64"]
  end

  config.vm.provision :ansible_local do |ansible|
    ansible.galaxy_role_file = "./ansible/requirements.yml"
    ansible.galaxy_roles_path = "./ansible/roles"
    ansible.install = true
	ansible.playbook = "./ansible/playbook.yml"
  end

end
