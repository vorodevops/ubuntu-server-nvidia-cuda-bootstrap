#!/bin/sh

# Build environment

sudo apt install linux-headers-$(uname -r)
sudo apt install build-essential


# Drivers

sudo apt install nvidia-390
sudo apt install nvidia-390-dev
sudo apt install nvidia-compute-utils-390
