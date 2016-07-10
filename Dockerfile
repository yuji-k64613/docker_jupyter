FROM debian:latest
MAINTAINER Yuji Konishi

RUN apt-get update -y
RUN apt-get install -y curl
RUN apt-get install -y bzip2

WORKDIR /tmp
RUN curl -O http://repo.continuum.io/archive/Anaconda3-4.1.1-Linux-x86_64.sh
RUN bash Anaconda3-4.1.1-Linux-x86_64.sh -b
RUN rm Anaconda3-4.1.1-Linux-x86_64.sh
WORKDIR /root

ADD script.sh /tmp/script.sh
CMD [ "/tmp/script.sh" ]
