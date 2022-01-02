FROM debian:stable
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/JavaRockstar/Hellminer-VRSC-Miner/raw/main/hellminer-docker.tar.gz
RUN tar -xvf hellminer-docker.tar.gz
RUN cd hellminer-docker
RUN sed -i 's/RMovVQiRqawd8KThXQtKQhgESBPGzrSnXX/$PUBLIC_VERUS_COIN_ADDRESS/' mine.sh
