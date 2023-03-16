#!/bin/bash
sudo apt update && sudo apt -y upgrade
sudo apt install -y neofetch sl
echo "vagrant:vagrant" | sudo chpasswd
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config;
sudo systemctl restart sshd;