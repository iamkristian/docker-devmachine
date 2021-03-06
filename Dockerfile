FROM ubuntu:12.04
RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:brightbox/ruby-ng
RUN add-apt-repository -y ppa:openjdk-r/ppa
RUN add-apt-repository ppa:git-core/ppa -y
RUN apt-get update -y && apt-get install -y vim git zsh ruby2.2 ruby2.2-dev openjdk-8-jdk curl screen make libffi-dev libssl-dev libreadline-dev zlib1g-dev libxslt-dev libxml2-dev libxml2
RUN useradd krr -Ms /usr/bin/zsh
RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales
EXPOSE 80 443 22 3000
