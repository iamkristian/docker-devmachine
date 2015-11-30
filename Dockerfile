FROM ubuntu:14.04
RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:brightbox/ruby-ng
RUN add-apt-repository -y ppa:openjdk-r/ppa
RUN apt-get update -y && apt-get install -y vim git zsh ruby2.2 ruby2.2-dev openjdk-8-jdk
RUN useradd krr -Ms /usr/bin/zsh
