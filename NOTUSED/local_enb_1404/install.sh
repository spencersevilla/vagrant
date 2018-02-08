#!/bin/bash

# Step 0: COMPLAIN if not Ubuntu 14.04!

# Step 1: configure network interfaces
# Note: we want the eNB to be on 10.0.101.2
# The EPC (virtualized) will be on 10.0.101.3

# Step 2: Install prereqs for eNB 
sudo apt-get install -y ansible python2.7 

# Step 3: Install/configure eNB with ansible
ansible-playbook -i "localhost," -c local enb_playbook.yml

# Step 4: Install prerequisites for EPC (over Vagrant)
sudo apt-get install -y vagrant virtualbox

# Step 5: Bring up EPC
vagrant up