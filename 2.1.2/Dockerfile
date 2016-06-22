FROM ubuntu:16.04

MAINTAINER laurens.devocht@ugent.be

RUN apt-get update
RUN apt-get install -y default-jre wget

ENV BLAZEGRAPH_RW_PATH /RWStore.properties
ENV BLAZEGRAPH_NAME blazegraph
ENV BLAZEGRAPH_VERSION 2.1.2
ENV BLAZEGRAPH_VERSION_URL http://sourceforge.net/projects/bigdata/files/bigdata/${BLAZEGRAPH_VERSION}/${BLAZEGRAPH_NAME}.jar/download

ADD RWStore.properties $BLAZEGRAPH_RW_PATH

RUN wget -O ${BLAZEGRAPH_NAME}.jar $BLAZEGRAPH_VERSION_URL
RUN wget https://s3.amazonaws.com/watdiv/benchmarkerconfigs/fastload.properties
