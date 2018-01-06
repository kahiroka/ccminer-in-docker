# ccminer-in-docker

This is a Dockerfile to build a ccminer container on your Linux hosts.

# Deps

NVIDIA/nvidia-docker

https://github.com/NVIDIA/nvidia-docker

# Setup

    $ cd ccminer-in-docker
    $ docker build -t ccminer/docker .
    $ nvidia-docker run -d \
          --name=ccminer \
          -e ALGO=<algorithm> \
          -e MINING_POOL=<MINING_POOL_WITH_PORT> \
          -e USER_NAME=<USERNAME/WORKERNAME> \
          -e PASSWORD=<PASSWORD> \
          -v /etc/localtime:/etc/localtime:ro \
          ccminer/docker 

You can check the output of ccminer with:

    $ docker logs -f ccminer

If there is no problem, you can stop/start this container as below.

    $ docker stop ccminer
    $ docker start ccminer

You need to remove/rename the container when you rebuild and run it with the same name.

    $ docker rm ccminer
