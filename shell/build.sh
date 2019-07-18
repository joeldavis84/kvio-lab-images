#!/bin/bash

ansible-playbook ansible/${targetEnvironment}-provision.yml > ansible-provision-${targetEnvironment}.log
ansible-playbook -i /tmp/inventory ansible/${targetEnvironment}-setup.yml > ansible-setup-${targetEnvironment}.log
ansible-playbook -i /tmp/inventory ansible/${targetEnvironment}-mkimage.yml > ansible-mkimage-${targetEnvironment}.log
