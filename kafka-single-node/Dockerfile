FROM ubuntu:16.04

MAINTAINER lyobzik <lyobzik@gmail.com>

RUN apt-get update -y && apt-get install -y bash coreutils net-tools hostname \
  less vim default-jre zookeeperd

ADD myid /etc/zookeeper/conf/
ADD zoo.cfg /etc/zookeeper/conf/

ENV KAFKA_VERSION="0.10.0.0" SCALA_VERSION="2.11"
ADD http://apache-mirror.rbc.ru/pub/apache/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz /tmp/kafka.tgz
RUN tar -xzf /tmp/kafka.tgz -C /opt && rm /tmp/kafka.tgz && \
  ln -s /opt/kafka_${SCALA_VERSION}-${KAFKA_VERSION} /opt/kafka

ADD entrypoint.sh /
ADD kafka-local-consumer.sh /
ADD kafka-local-producer.sh /

EXPOSE 2181 9092
WORKDIR /opt/kafka
CMD ["/entrypoint.sh"]
