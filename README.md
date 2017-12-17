# ccminer-in-docker

This is a Dockerfile to build a ccminer container on your Linux hosts.

# Deps

NVIDIA/nvidia-docker

https://github.com/NVIDIA/nvidia-docker

# Setup

    $ cd ccminer-in-docker
    $ docker build -t ccminer/docker .
    $ nvidia-docker run -d -e ALGO=<algorithm> -e MINING_POOL=<MINING_POOL_WITH_PORT> -e USER_NAME=<USERNAME/WORKERNAME> -e PASSWORD=<PASSWORD> -v /etc/localtime:/etc/localtime:ro ccminer/docker 

# Test

You should see your GPUs' status.

    $ nvidia-smi
