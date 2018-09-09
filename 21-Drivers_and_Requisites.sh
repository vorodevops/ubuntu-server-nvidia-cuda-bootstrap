#!/bin/sh

# Build environment

sudo apt-get install linux-headers-$(uname -r)
sudo apt-get install build-essential


# Drivers

sudo apt-get install nvidia-390
sudo apt-get install nvidia-390-dev
sudo apt-get install nvidia-compute-utils-390
