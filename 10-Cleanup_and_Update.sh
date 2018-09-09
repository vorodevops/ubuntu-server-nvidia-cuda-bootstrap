#!/bin/sh

# Remove server-ish packages

sudo apt-get remove snapd lxcfs lxd
sudo apt-get remove open-iscsi
sudo apt-get remove accountsservice


# Update and upgrade

sudo apt-get update
sudo apt-get dist-upgrade


# Cleanup

sudo apt-get autoremove
sudo apt-get clean


# Restart

sudo reboot
