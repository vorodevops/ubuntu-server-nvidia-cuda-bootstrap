#!/bin/sh

# Remove server-ish packages

sudo apt remove snapd lxcfs lxd
sudo apt remove open-iscsi
sudo apt remove accountsservice


# Update and upgrade

sudo apt update
sudo apt dist-upgrade


# Cleanup

sudo apt autoremove
sudo apt clean


# Restart

sudo reboot
