#!/bin/bash
echo "amina"
read amina
sudo adduser $username
sudo usermod -aG sudo $username
echo "user $username created and added to sudo group."

