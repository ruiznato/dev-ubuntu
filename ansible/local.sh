#!/bin/bash

# Install pre-requisites
sudo apt-get update -qq
sudo apt-get install -y software-properties-common apt-transport-https
sudo apt-get install -y ansible
sudo apt-get install -y pip
sudo pip install requests[security]

# Setup Ansible
sudo ansible-galaxy install -r ansible/requirements.yml
sudo bash -c 'printf "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts'

# Provisioning
sudo ansible-playbook ansible/playbook.yml --connection=local
