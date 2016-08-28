#!/bin/bash

set -eub

service zookeeper start

HOSTNAME_IP=`hostname -i`
ADVERTISED_HOST_NAME=${ADVERTISED_HOST_NAME:-${HOSTNAME_IP}}

if grep -q advertised.host.name config/server.properties; then
	sed -i "s/\(advertised.host.name=\).*/\1${ADVERTISED_HOST_NAME}/" config/server.properties
else
	echo "advertised.host.name=${ADVERTISED_HOST_NAME}" >> config/server.properties
fi

bin/kafka-server-start.sh config/server.properties
