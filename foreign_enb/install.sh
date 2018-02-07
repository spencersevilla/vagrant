#!/bin/bash

# Step 0: COMPLAIN if not Ubuntu 17.10!

# Step 1: configure network interfaces
# Note: we want the eNB to be on 10.0.101.2
# The EPC will be 10.0.101.3

# Step 2: Install prereqs (ansible and python)
sudo add-apt-repository -y ppa:ansible/ansible-2.4
sudo apt-get update
sudo apt-get install -y ansible python2.7

# Step 3: Run Ansible script to do the rest
ansible-playbook -v -i "localhost," -c local epc_playbook.yml 
