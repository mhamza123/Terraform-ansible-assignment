#!/bin/bash

echo "Installing Ansible..."

sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt update
sudo apt install software-properties-common
sudo apt install ansible
sudo apt install python3-pip python3-pip
sudo pip install passlib

if [ $? == 0 ]; then
echo “$(ansible — version | awk ‘NR==1{print}’) installed successfully”
else
echo “Failed to install ansible”
fi
