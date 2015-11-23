FROM ubuntu:14.04
RUN apt-get update -y
RUN apt-get install -y binutils vim git openssh-server zsh gcc
RUN useradd <user> -Ms /usr/bin/zsh
