FROM ubuntu:18.04
MAINTAINER Eduardo Rodrigues <erocha.ssa@gmail.com>

RUN apt-get update
RUN apt-get install -y openssh-client
RUN apt-get install -y python python-pip
RUN pip install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
