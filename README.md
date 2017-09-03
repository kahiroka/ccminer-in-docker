# ccminer-in-docker

This is a Dockerfile to build a ccminer container on your Linux hosts.

# Deps

NVIDIA/nvidia-docker

https://github.com/NVIDIA/nvidia-docker

# Setup

    $ cd ccminer-in-docker
    $ docker build -t ccminer/docker .
    $ nvidia-docker run -it -v /etc/localtime:/etc/localtime:ro ccminer/docker

# Test

You should see your GPUs' status.

    $ nvidia-smi

# Mining

It depends on minig pools and algorithms you chose.

    $ cd ~/ccminer
    $ ./ccminer --algo=lyra2v2 --url="stratum+tcp://lyra2rev2.eu.nicehash.com:3347" --userpass="WALLETADDRESS.WORKERNAME:PASSWORD"
