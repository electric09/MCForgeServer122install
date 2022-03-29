#!/bin/sh
sudo -n true
test $? -eq 0 || exit 1 "you should have sudo privilege to run this script"
apt-get update  # To get the latest package lists
apt-get install ansible -y
sudo ansible-playbook mcinst.yml
#etc.
