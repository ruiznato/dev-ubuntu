#!/bin/bash

# Install pre-requisites
apt-get update -qq

apt-get install -y software-properties-common git apt-transport-https
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get install -y ansible

# Python modules
pip install urllib3
pip install pyopenssl
pip install ndg-httpsclient
pip install pyasn1


# Setup Ansible
ansible-galaxy install -r ansible/requirements.yml
bash -c 'printf "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts'

# Provisioning
ansible-playbook ansible/playbook.yml --syntax-check
ansible-playbook ansible/playbook.yml --connection=local "$@"
