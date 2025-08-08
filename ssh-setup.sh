#!/bin/bash
# Script SSH Setup by Amina

# Install SSH server
sudo apt update
sudo apt install openssh-server -y

# Enable & start SSH
sudo systemctl enable ssh
sudo systemctl start ssh

# Create .ssh folder
mkdir -p ~/.ssh
chmod 700 ~/.ssh

echo "SSH Server installed and running."


#Rendre exécutable :

chmod +x ssh-setup.sh
