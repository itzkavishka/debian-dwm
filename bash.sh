#!/bin/bash

# Update package index
sudo apt-get update

# Install packages
sudo apt-get install sudo xorg dwm dmenu git pm-utils alsa-utils stterm -y

#I am not using a login manager & this automate my startx process

# Get the username
username=$(whoami)

# Create the .bash_profile file
touch /home/$username/.bash_profile

# Add the startx command to the file
echo "startx" >> /home/$username/.bash_profile

#This will install brave browser

sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

