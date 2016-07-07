# Ubuntu 16.10 Development Environment

[![Build Status](https://travis-ci.org/ruiznato/dev-ubuntu.svg?branch=master)](https://travis-ci.org/ruiznato/dev-ubuntu)

Provisioned by Ansible

## Description

Ansible Provisioning to setup a Development Environment on Ubuntu 16.10

## Vagrant

#### Pre-requisites
- Oracle VM VirtuaBox + Guest Additions 5.0
- Vagrant 1.8.1
- Ansible 2.1

#### Usage

```bash
git clone git@github.com:ruiznato/dev-ubuntu.git
cd dev-ubuntu
vagrant up
```

## Local

Just need to run the local.sh script.

```bash
git clone git@github.com:ruiznato/dev-ubuntu.git
cd dev-ubuntu
./ansible/local.sh
```