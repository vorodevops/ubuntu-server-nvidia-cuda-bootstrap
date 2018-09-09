#!/bin/sh

# Download and install CUDA runfiles

wget https://developer.nvidia.com/compute/cuda/9.2/Prod2/local_installers/cuda_9.2.148_396.37_linux
wget https://developer.nvidia.com/compute/cuda/9.2/Prod2/patches/1/cuda_9.2.148.1_linux

sudo sh cuda_9.2.148_396.37_linux
sudo sh cuda_9.2.148.1_linux
