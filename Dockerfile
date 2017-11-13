FROM nvidia/cuda:latest

RUN groupadd -g 2000 miner && \
    useradd -u 2000 -g miner -m -s /bin/bash miner && \
    echo 'miner:miner' | chpasswd
RUN apt-get -y update
RUN apt-get -y install git automake libssl-dev libcurl4-openssl-dev

USER miner
RUN cd && git clone https://github.com/tpruvot/ccminer.git && cd ~/ccminer && git checkout cuda-9 
RUN cd ~/ccminer && ./autogen.sh && ./configure && make
