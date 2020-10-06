FROM strimzi/kafka:latest-kafka-2.4.0
COPY ./plugins/* /opt/kafka/plugins/
