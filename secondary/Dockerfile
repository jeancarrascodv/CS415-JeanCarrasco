FROM ubuntu:latest
RUN apt-get update && apt-get install -y sudo
RUN useradd -m -s /bin/bash myuser
USER myuser
WORKDIR /home/myuser
