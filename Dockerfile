ARG kafka_version

FROM strimzi/kafka:latest-kafka-$kafka_version
COPY ./plugins/* /opt/kafka/plugins/
