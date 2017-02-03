FROM ubuntu:14.04

MAINTAINER Adrien Desbiaux

RUN apt-get update -y
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:george-edison55/cmake-3.x -y
RUN apt-get update -y
RUN apt-get install cmake -y
RUN apt-get install build-essential -y

ADD run.sh run.sh
RUN chmod +x run.sh
CMD ./run.sh
