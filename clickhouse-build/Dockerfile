FROM ubuntu:16.04

MAINTAINER lyobzik <lyobzik@gmail.com>

RUN apt-get update -y && apt-get install -y git cmake g++-5 \
  libicu-dev libglib2.0-dev libreadline-dev libmysqlclient-dev libssl-dev unixodbc-dev \
  libboost-dev libboost-thread-dev libboost-program-options-dev libboost-system-dev libboost-regex-dev libboost-filesystem-dev \
  devscripts dupload fakeroot debhelper \
  clang

RUN git clone https://github.com/yandex/ClickHouse.git /root/clickhouse && mkdir /root/clickhouse/build

ENV DISABLE_MONGODB 1

WORKDIR /root/clickhouse
