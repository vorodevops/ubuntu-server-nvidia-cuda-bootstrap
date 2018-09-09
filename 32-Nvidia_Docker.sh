#!/bin/sh

# Pre-Install Docker CE

sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update


# Actually install Nvida Docker

sudo apt-get install -y nvidia-docker2

sudo addgroup `whoami` docker


# Register to Nvidia Cloud

docker login nvcr.io


# Test

nvidia-docker run --runtime=nvidia --rm nvidia/cuda nvidia-smi

nvidia-docker run -it --runtime=nvidia --shm-size=1g -e NVIDIA_VISIBLE_DEVICES=0 --rm nvcr.io/nvidia/pytorch:18.05-py3

nvidia-docker run -it --rm --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864  -v local_dir:SOME_PATH nvcr.io/nvidia/tensorflow:18.08-py3
