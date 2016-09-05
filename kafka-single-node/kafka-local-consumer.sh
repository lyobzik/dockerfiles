#!/bin/bash

topic=${1}
shift 1

/opt/kafka/bin/kafka-console-consumer.sh --zookeeper 127.0.0.1:2181 --bootstrap-server 127.0.0.1:9092 \
	--key=deserializer org.apache.kafka.common.serialization.StringDeserializer --property print.key=true \
	--topic ${topic} ${@}
