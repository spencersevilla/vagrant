# vagrant
Vagrant + Ansible combos for setting up a standalone LTE box

The entire point of this repo is to package everything up nicely so that we don't have to spend lots of time on system configs.

Prerequisites: Install Vagrant, Ansible, and a VM platform (I used Virtualbox) on your machine.

Build Process: cd into a directory and run "vagrant up"

Use the Machine: "vagrant ssh" gets you into the system. When you're done, "vagrant suspend" pauses it, "vagrant halt" shuts it down, and "vagrant destroy" completely removes it. If you've halted/destroyed it you'll have to run "vagrant up" again to turn it on before you can ssh in.

Overall System Configs: More on this to come, but basically, the "epc" project right now configures an entire standalone epc box onto the machine. It uses 127.{10,20,30} addresses for all its internal communications, and has the following network expectations of its host VM:

- There is an eNB, either in real-land or VM land, that connects to the epc as follows: TBD. If you use our "enb" image this should all be taken care of for you.

- There is an outgoing Internet connection as follows: TBD.
