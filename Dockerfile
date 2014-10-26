# Dockerfile for an InfluxDB container on CoreOS.

FROM shift/coreos-ubuntu-confd:latest

MAINTAINER Vincent Palmer <shift-gh@someone.section.me>

ENV DEBIAN_FRONTEND noninteractive
RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y

RUN curl -O http://s3.amazonaws.com/influxdb/influxdb_latest_amd64.deb
RUN dpkg -i influxdb_latest_amd64.deb
