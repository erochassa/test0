FROM ubuntu
MAINTAINER Eduardo Rodrigues <erocha.ssa@gmail.com>

RUN apt-get update
RUN apt-get install -y openssh-client
