#!/bin/bash
set -e

# Update & install Apache
sudo apt update -y
sudo apt upgrade -y
sudo apt install apache2 -y

# Go to web root
cd /var/www/

# Remove old html folder if exists
sudo rm -rf html

# Clone website from GitHub
sudo git clone https://github.com/Vanshaj-HjInfotech/Sample-website-todolist

# Rename cloned folder to html
sudo mv Sample-website-todolist html

# Restart Apache
sudo systemctl restart apache2
