#!/bin/bash

topic=${1}
shift 1

/opt/kafka/bin/kafka-console-producer.sh --broker-list 127.0.0.1:9092 --topic ${topic} ${@}
