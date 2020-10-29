#!/bin/bash

echo Make sure you run sudo docker login before this script

set -x

for VERSION in 2.4.0 2.5.1 2.6.0
do
    sudo docker image rm kafka --force
    sudo docker build -t  kafka . --build-arg kafka_version=${VERSION}
    sudo docker tag kafka:latest timran1/kafka:latest-kafka-${VERSION}
    sudo docker push timran1/kafka:latest-kafka-${VERSION}
done
